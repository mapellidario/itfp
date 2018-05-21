cmake_minimum_required(VERSION 2.6)
project(gaus2d)

include_directories(random)
include_directories(gaus2ddir)

add_subdirectory(random)
add_subdirectory(gaus2ddir)

list(APPEND CMAKE_PREFIX_PATH $ENV{ROOTSYS})
find_package(ROOT REQUIRED COMPONENTS RIO Net)
include(${ROOT_USE_FILE})

add_executable(gaus2d gaus2d.cpp)
target_link_libraries(gaus2d gaus2dgen ${ROOT_LIBRARIES})