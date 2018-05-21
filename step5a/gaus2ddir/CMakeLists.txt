cmake_minimum_required(VERSION 2.6)
project(gaus2dgen)

# no include_dir needed here!

add_library(gaus2dgen gaus2dgen.cpp)
target_link_libraries(gaus2dgen random)