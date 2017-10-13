
package = "ca-interceptor-login"
version = "0.0-1"
source = {
   url = "git://github.com/ivansandrini/ca-interceptor-login",
   tag = "master",
}
description = {
   summary = "Inteceptor for login.",
   detailed = [[
      Inteceptor for login.
   ]],
   homepage = "http://ivansandrini.github.com/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.ca-interceptor-login.handler"] = "handler.lua",
    ["kong.plugins.ca-interceptor-login.schema"] = "schema.lua"
  }
}