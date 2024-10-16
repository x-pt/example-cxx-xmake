-- Set project name and language
set_project("example-cxx-xmake")
set_version("0.0.1")
set_languages("c++20")

-- Include directories
add_includedirs("include")

-- Add targets
target("example_cxx_xmake_lib")
    set_targetdir("build/lib")
    set_kind("static")
    add_files("src/*.cpp")
    add_headerfiles("include/*.h")

target("example-cxx-xmake")
    set_targetdir("build/bin")
    set_kind("binary")
    add_files("src/main.cpp")
    add_deps("example_cxx_xmake_lib")

-- Add tests
includes("tests")
