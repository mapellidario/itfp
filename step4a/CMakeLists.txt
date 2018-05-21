cmake_minimum_required(VERSION 2.6)
project(gaus2d)

include_directories(random)
include_directories(gaus2ddir)

add_subdirectory(random)
add_subdirectory(gaus2ddir)

add_executable(gaus2d gaus2d.cpp)
target_link_libraries(gaus2d gaus2dgen)