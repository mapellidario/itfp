cmake_minimum_required(VERSION 2.6)
project(gaus2d)

add_library(gaus2dgen gaus2dgen.cpp)
add_executable(gaus2d gaus2d.cpp)
target_link_libraries(gaus2d gaus2dgen)