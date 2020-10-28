
cmake_minimum_required(VERSION 2.6)
set(CMAKE_C_FLAGS -pthread)
project(server_randno)
add_executable(server_randno server.c)
install(TARGETS server_randno DESTINATION bin)


