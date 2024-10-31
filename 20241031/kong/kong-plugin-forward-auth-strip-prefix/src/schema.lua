local typedefs = require "kong.db.schema.typedefs"

local HEADER_FORWARD_TO_AUTH = {
    "authorization",
    "x-sensetime-sso-client-id",
}

local AUTH_RESPONSE_HEADER_TO_FORWARD = {
    "x-auth-user-info",
    "x-sensetime-trace-id",
}

return {
    name = "forward-auth-strip-prefix",
    fields = {
        {
            consumer = typedefs.no_consumer
        },
        {
            protocols = typedefs.protocols_http
        },
        {
            config = {
                type = "record",
                fields = {
                    { timeout = { default = 10000, type = "number" } }, 
                    { keepalive_timeout = { default = 60000, type = "number" } },
                    { auth_enabled = { default = true, type = "boolean" } },
                    { auth_uri = { default = "http://auth-service.app.svc.cluster.local:8088/v1/auth", type = "string" } },
                    { path_prefix_enabled = { default = true, type = "boolean" } },
                    { path_prefix = { required = true, type = "string" } },
                    { origin_request_headers_to_forward_to_auth = { type = "array", default = HEADER_FORWARD_TO_AUTH, elements = { type = "string" } } },
                    { auth_response_headers_to_forward = { type = "array", default = AUTH_RESPONSE_HEADER_TO_FORWARD, elements = { type = "string" } } },
                },
            },
        },
       
    },
    entity_checks = {},
}