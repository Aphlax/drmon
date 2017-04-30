-- drmon installation script
--
--

local libURL = "https://raw.githubusercontent.com/acidjazz/drmon/master/lib/f.lua"
local lib2URL = "https://raw.githubusercontent.com/acidjazz/drmon/master/lib/surface.lua"
local startupURL = "https://raw.githubusercontent.com/acidjazz/drmon/master/drmon.lua"
local lib, lib2, startup
local libFile, lib2File, startupFile

fs.makeDir("lib")

lib = http.get(libURL)
libFile = lib.readAll()

local file1 = fs.open("lib/f", "w")
file1.write(libFile)
file1.close()


lib2 = http.get(lib2URL)
lib2File = lib2.readAll()

local file2 = fs.open("lib/surface", "w")
file2.write(lib2File)
file2.close()


startup = http.get(startupURL)
startupFile = startup.readAll()

local file3 = fs.open("startup", "w")
file3.write(startupFile)
file3.close()

