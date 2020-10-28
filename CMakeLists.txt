
cmake_minimum_required(VERSION 2.6)
set(CMAKE_C_FLAGS -pthread)
project(server_randno)
add_executable(server_randno server.c)
target_link_libraries(server_randno pthread)
install(TARGETS server_randno DESTINATION bin)


