package = "hello-world"
version = "0.0.1-1"
source = {
  url = "."
}
description = {
  summary = "Kong plugin to say hello to the world",
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.hello-world.handler"] = "handler.lua",
    ["kong.plugins.hello-world.schema"] = "schema.lua",
  }
}
