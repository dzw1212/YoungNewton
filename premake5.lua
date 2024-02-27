workspace "YoungNewton"
    configurations { "Debug", "Release" }
    architecture "x86_64"

project "YoungNewton"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++latest"

    targetdir "bin/%{cfg.buildcfg}"
    targetdir "bin-int/%{cfg.buildcfg}"

    files
    {
        "src/**.h",
        "src/**.cpp",
    }

    defines
    {
        "_CRT_SECURE_NOT_WARNINGS",
    }

    includedirs
    {
        "src",
    }

    libdirs{}

    links{}

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"