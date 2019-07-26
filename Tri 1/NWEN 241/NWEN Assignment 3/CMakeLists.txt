cmake_minimum_required(VERSION 3.13)
project(NWEN_Assignment_3)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")

add_executable(Test_4 t34test.cc dbms.hh dbms.cc)
add_executable(Test_5 t5test.cc dbms.hh dbms.cc)
add_executable(Test_6 t6test.cc dbms.hh dbms.cc)
add_executable(Test_7 t7test.cc dbms.hh dbms.cc)
