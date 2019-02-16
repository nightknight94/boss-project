cmake_minimum_required(VERSION 3.10)

project (sources)

# set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
# set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libraries)

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

    -Wno-psabi               # disable note X changed in GCC 7.1
)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/libraries/cmake/find-modules)

find_package(pthread REQUIRED)
find_package(gtest REQUIRED)
find_package(gmock REQUIRED)
find_package(wiringPi REQUIRED)

add_subdirectory(libraries)
