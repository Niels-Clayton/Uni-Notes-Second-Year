cmake_minimum_required(VERSION 3.13)
project(Assignment_1_C__)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(Assignment_1_C__
        editor.hh
        myeditor.cc
        myeditor.hh)
