package = "kong-plugin-forward-auth-strip-prefix"

local pluginName = "forward-auth-strip-prefix"

version = "0.1.0-1"

supported_platforms = {"linux", "macosx"}

source = {
  url = "https://gitlab.senseauto.com/beacon/ingress/kong-plugins",
  tag = "0.1.0-1"
}

description = {
  summary = "A Kong plugin that make GET auth request and strip path prefix before proxying the original.",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.forward-auth-strip-prefix.access"] = "src/access.lua",
    ["kong.plugins.forward-auth-strip-prefix.handler"] = "src/handler.lua",
    ["kong.plugins.forward-auth-strip-prefix.schema"] = "src/schema.lua"
  }
}