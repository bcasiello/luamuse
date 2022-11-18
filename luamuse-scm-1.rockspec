local package_name = "luamuse"
local package_version = "scm"
local rockspec_revision = "1"
local github_account_name = "bcasiello"
local github_repo_name = "luamuse"


package = package_name
version = package_version.."-"..rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = (package_version == "scm") and "main" or nil,
  tag = (package_version ~= "scm") and package_version or nil,
}

description = {
  summary = "A websockets-based Multi-User Shared Environment in Lua",
  detailed = [[
    A websockets-based Multi-User Shared Environment in Lua
  ]],
  license = "MIT",
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
}

dependencies = {
  "lua >= 5.1, < 5.5",
}

build = {
  type = "builtin",

  modules = {
    ["luamuse.init"] = "src/luamuse/init.lua",
  },

  copy_directories = {
    -- can be accessed by `luarocks luamuse doc` from the commandline
    "docs",
  },
}
