cmake_minimum_required(VERSION 3.14)
project(NWEN_Assignment_4)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror -pedantic")

add_executable(Test_4 t4test.cc dbms2.cc vdb.cc)
add_executable(Test_5 t5test.cc dbms2.cc vdb.cc)
add_executable(Test_6 t6test.cc dbms2.cc vdb.cc )
add_executable(Test_7 t7test.cc dbms2.cc lldb.cc)
add_executable(Test_main dbms2.cc dbcmd.cpp lldb.cc)
