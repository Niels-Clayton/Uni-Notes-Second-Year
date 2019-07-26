cmake_minimum_required(VERSION 3.14)
project(NWEN_Assignment_5)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror -pedantic")

include_directories(.)

add_executable(Assignment_5 vdb.cc vdb.hh server.hh server.cc run_server.cc)
