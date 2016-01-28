local BasePlugin = require "kong.plugins.base_plugin"
local HelloWorldHandler = BasePlugin:extend()

function HelloWorldHandler:new()
  HelloWorldHandler.super.new(self, "helloworld")
end

function HelloWorldHandler:access(conf)
  HelloWorldHandler.super.access(self)
  ngx.header["Hello-World"] = conf.message
end


return HelloWorldHandler
