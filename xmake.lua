-- Project Configuration
set_project("example-cxx-xmake")
set_version("0.0.1")
set_languages("c++20")

-- Dependencies
add_requires("spdlog")       -- Add spdlog as a required dependency

-- Define Library Target
target("example_cxx_xmake_lib")
    set_kind("static")                               -- Build as a static library
    set_targetdir("build/lib")                       -- Specify output directory
    add_includedirs("include", {public = true})      -- Include project's header files
    add_includedirs("third_party", {public = true})  -- Include project's header files
    add_files("src/*.cpp|main.cpp")                  -- Add project source files, but exclude main.cpp
    add_headerfiles("include/**/*.h")                -- Add project's header files
    add_headerfiles("include/**/*.hpp")              -- Add project's header files
    add_headerfiles("third_party/**/*.h")            -- Add project's header files
    add_headerfiles("third_party/**/*.hpp")          -- Add project's header files
    add_packages("spdlog")                           -- Link spdlog headers and library

-- Define Executable Target
target("example-cxx-xmake")
    set_kind("binary")                -- Build as an executable
    set_targetdir("build/bin")        -- Specify output directory
    add_files("src/main.cpp")         -- Add main source file
    add_deps("example_cxx_xmake_lib") -- Link against the library
    add_packages("spdlog")            -- Include spdlog headers and library

-- Tests Configuration
includes("tests")                     -- Include the tests subdirectory
