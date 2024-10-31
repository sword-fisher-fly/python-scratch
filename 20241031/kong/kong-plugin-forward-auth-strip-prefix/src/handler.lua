local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.forward-auth-strip-prefix.access"

local AuthRequestHandler = BasePlugin:extend()

AuthRequestHandler.PRIORITY = 700

function AuthRequestHandler:new()
  AuthRequestHandler.super.new(self, "forward-auth-strip-prefix")
end

function AuthRequestHandler:access(conf)
  AuthRequestHandler.super.access(self)
  access.execute(conf)
end

return AuthRequestHandler
