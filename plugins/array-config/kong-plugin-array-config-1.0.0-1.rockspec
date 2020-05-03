package = "kong-plugin-array-config"
version = "1.0.0-1"
supported_platforms = {"linux", "macosx"}

source = {
  url = "http://github.com/shipstation/api-gateway.git",
  tag = "1.0.0"
}

description = {
  summary = "Array Config Plugin",
  homepage = "https://github.com/mattburton/deck-issue-144-repro",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.array-config.handler"] = "handler.lua",
    ["kong.plugins.array-config.schema"] = "schema.lua",
  }
}
