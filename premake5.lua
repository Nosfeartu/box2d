project "Box2D"
    kind "StaticLib"
    language "C"
	cdialect "C17"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "src/**.c",
        "src/**.h",
        "include/**.h"
    }
    
    includedirs
    {
        "include",
        "src"
    }
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"