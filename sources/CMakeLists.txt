cmake_minimum_required(VERSION 3.10)

project (sources)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_compile_options(
    -Wall
    -Wextra                  # reasonable and standard
    -Wshadow                 # warn the user if a variable declaration shadows one from a parent context
    -Wnon-virtual-dtor       # warn the user if a class with virtual functions has a non-virtual destructor. This helps catch hard to track down memory errors
    -Wold-style-cast         # warn for c-style casts
    -Wcast-align             # warn for potential performance problem casts
    -Wunused                 # warn on anything being unused
    -Woverloaded-virtual     # warn if you overload (not override) a virtual function
    -Wpedantic               # warn if non-standard C++ is used
    -Wconversion             # warn on type conversions that may lose data
    -Wsign-conversion        # warn on sign conversions
    -Wmisleading-indentation # warn if identation implies blocks where blocks do not exist
    -Wduplicated-cond        # warn if if / else chain has duplicated conditions
    -Wduplicated-branches    # warn if if / else branches have duplicated code
    -Wlogical-op             # warn about logical operations being used where bitwise were probably wanted
    -Wnull-dereference       # warn if a null dereference is detected
    -Wuseless-cast           # warn if you perform a cast to the same type
    -Wdouble-promotion       # warn if float is implicit promoted to double
    -Wformat=2               # warn on security issues around functions that format output (ie printf)
)

add_subdirectory(libraries/utilities)
add_subdirectory(libraries/hardware)
add_subdirectory(libraries/automation)
add_subdirectory(bot-manager)

