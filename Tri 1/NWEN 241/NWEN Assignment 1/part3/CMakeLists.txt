cmake_minimum_required(VERSION 3.13)
project(part3)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(part3
        viewing_buffer_editor.cpp
        viewing_buffer_editor.h)
