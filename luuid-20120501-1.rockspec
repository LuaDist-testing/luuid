-- This file was automatically generated for the LuaDist project.

package = "luuid"
version = "20120501-1"
-- LuaDist source
source = {
  tag = "20120501-1",
  url = "git://github.com/LuaDist-testing/luuid.git"
}
-- Original source
-- source = {
--    url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/luuid.tar.gz",
--    md5 = "28273187c1f8176e98f959889d6abdbc",
--    dir = "uuid"
-- }
description = {
   summary = "A library for UUID generation",
   detailed = [[
      A library for generating universally unique identifiers based on
      libuuid, which is part of e2fsprogs.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#luuid",
   license = "Public domain"
}
dependencies = {
   "lua ~> 5.1"
}
external_dependencies = {
   LIBUUID = {
      header = "uuid/uuid.h",
      library = "uuid"
   }
}
build = {
   type = "builtin",
   modules = {
      uuid = {
         libraries = { "uuid" },
         incdirs = { "$(LIBUUID_INCDIR)" },
         libdirs = { "$(LIBUUID_LIBDIR)" },
         sources = { "luuid.c" },
      }
   }
}