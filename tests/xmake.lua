-- Add Google Test package
add_requires("gtest")

-- Add test target
target("example-cxx-xmake-tests")
    set_targetdir("$(buildir)/bin")
    set_kind("binary")
    add_files("*.cpp")
    add_deps("example_cxx_xmake_lib")
    add_packages("gtest")
