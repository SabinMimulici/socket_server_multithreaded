# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sabin/git/socket_server_multithreaded

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sabin/git/socket_server_multithreaded/build

# Include any dependencies generated for this target.
include CMakeFiles/server_randno.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server_randno.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server_randno.dir/flags.make

CMakeFiles/server_randno.dir/server.c.o: CMakeFiles/server_randno.dir/flags.make
CMakeFiles/server_randno.dir/server.c.o: ../server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sabin/git/socket_server_multithreaded/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/server_randno.dir/server.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/server_randno.dir/server.c.o   -c /home/sabin/git/socket_server_multithreaded/server.c

CMakeFiles/server_randno.dir/server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server_randno.dir/server.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sabin/git/socket_server_multithreaded/server.c > CMakeFiles/server_randno.dir/server.c.i

CMakeFiles/server_randno.dir/server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server_randno.dir/server.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sabin/git/socket_server_multithreaded/server.c -o CMakeFiles/server_randno.dir/server.c.s

# Object files for target server_randno
server_randno_OBJECTS = \
"CMakeFiles/server_randno.dir/server.c.o"

# External object files for target server_randno
server_randno_EXTERNAL_OBJECTS =

server_randno: CMakeFiles/server_randno.dir/server.c.o
server_randno: CMakeFiles/server_randno.dir/build.make
server_randno: CMakeFiles/server_randno.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sabin/git/socket_server_multithreaded/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable server_randno"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server_randno.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server_randno.dir/build: server_randno

.PHONY : CMakeFiles/server_randno.dir/build

CMakeFiles/server_randno.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server_randno.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server_randno.dir/clean

CMakeFiles/server_randno.dir/depend:
	cd /home/sabin/git/socket_server_multithreaded/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sabin/git/socket_server_multithreaded /home/sabin/git/socket_server_multithreaded /home/sabin/git/socket_server_multithreaded/build /home/sabin/git/socket_server_multithreaded/build /home/sabin/git/socket_server_multithreaded/build/CMakeFiles/server_randno.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server_randno.dir/depend

