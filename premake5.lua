project "miniaudio"
	kind "StaticLib"
	language "C"
	staticruntime "on"
	language (engine.compiler.language)
	cdialect (engine.compiler.dialect)
	toolset (engine.compiler.toolset)

	targetdir (engine.lib)
	objdir (engine.intermediate)

	files { "miniaudio.c" }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
	filter {}

	filter "system:windows"
	filter {}
