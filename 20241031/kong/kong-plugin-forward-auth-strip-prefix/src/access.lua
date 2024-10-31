local http = require "resty.http"
local cjson = require "cjson.safe"

local _M = {}

local function strip_path_prefix(conf)
    local service_path = ngx.ctx.service.path or ""
    local full_path = kong.request.get_path()
    local replace_match = string.gsub(conf.path_prefix, "%-", "%%%1")
    local path_without_prefix = full_path:gsub(replace_match, "", 1)

    if path_without_prefix == "" and service_path == "" then
        path_without_prefix = "/"
    end

    local new_path = path_without_prefix
    if service_path ~= "" then
        new_path = service_path .. new_path
    end

    return new_path
end

function _M.execute(conf)
    kong.log.debug("enter plugin(ts): ", ngx.now())
    local new_path = strip_path_prefix(conf)

    if conf.auth_enabled then
        local ok, err
        local scheme, host, port, _ = unpack(http:parse_uri(conf.auth_uri))
        kong.log.debug("unpack uri(ts): ", ngx.now())

        local client = http.new()
        client:set_timeout(conf.timeout)
        client:connect(host, port)
        kong.log.debug("connect auth(ts): ", ngx.now())
        if scheme == "https" then
            local ok, err = client:ssl_handshake()
            if not ok then
                kong.log.err(err)
                return kong.response.exit(500, { message = "An unexpected error occurred" })
            end
        end

        local auth_request = _M.new_auth_request(conf.path_prefix, new_path, conf.origin_request_headers_to_forward_to_auth, conf.keepalive_timeout)

        local res, err = client:request_uri(conf.auth_uri, auth_request)

        kong.log.debug("receive response(ts): ", ngx.now())
        if not res then
            kong.log.err(err)
            return kong.response.exit(500, { message = "An unexpected error occurred" })
        end

        if res.status > 299 then
            return kong.response.exit(res.status, res.body)
        end

        for _, name in ipairs(conf.auth_response_headers_to_forward) do
            if res.headers[name] then
                kong.service.request.set_header(name, res.headers[name])
            end
        end
        kong.log.debug("set reponse header(ts): ", ngx.now())
    end

    if conf.path_prefix_enabled then 
        kong.log("rewrite origin path ", kong.request.get_path(), " to upstream path ", new_path)
        kong.service.request.set_path(new_path)
    end
end

function _M.new_auth_request(path_prefix, new_path, origin_request_headers_to_forward_to_auth, keepalive_timeout)
    local headers = {
        charset = "utf-8",
        ["content-type"] = "application/json"
    }
    headers["x-forwarded-prefix"] = path_prefix
    headers["x-forwarded-uri"] = new_path
    headers["x-forwarded-method"] = kong.request.get_method()

    kong.log.debug("origin_path: ", kong.request.get_path())
    kong.log.debug("x-forwarded-uri: ", new_path)
    kong.log.debug("x-forwarded-prefix: ", path_prefix)
    kong.log.debug("x-forwarded-method: ", kong.request.get_method())

    for _, name in ipairs(origin_request_headers_to_forward_to_auth) do
        local header_val = kong.request.get_header(name)
        if header_val then
            headers[name] = header_val
        end
    end
    return {
        method = "GET",
        headers = headers,
        body = "",
        keepalive_timeout = keepalive_timeout
    }
end

return _M
