-- handler.lua
local BasePlugin = require "kong.plugins.base_plugin"
local CustomHandler = BasePlugin:extend()

function CustomHandler:new()
  CustomHandler.super.new(self, "ca-interceptor-login")
end

function CustomHandler:access(config)
  CustomHandler.super.access(self)

  print(config.key_names) -- {"apikey"}
  print(config.hide_credentials) -- false
end

return CustomHandler