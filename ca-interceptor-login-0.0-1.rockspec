
package = "ca-interceptor-login"
version = "0.0-1"
source = {
   url = "git://github.com/ivansandrini/ca-interceptor-login",
   tag = "v1.0",
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
   "lua >= 5.1, < 5.4",
   "luaknife >= 2.3"
}
build = {
    type = "builtin",
    modules = {
        handler = "handler.lua",
        schema = "schema.lua"
    }
}