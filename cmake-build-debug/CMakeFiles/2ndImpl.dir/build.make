# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /home/fellipe/Downloads/clion-2017.2.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/fellipe/Downloads/clion-2017.2.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fellipe/Projects/private/2ndImpl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fellipe/Projects/private/2ndImpl/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/2ndImpl.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/2ndImpl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2ndImpl.dir/flags.make

CMakeFiles/2ndImpl.dir/main.cpp.o: CMakeFiles/2ndImpl.dir/flags.make
CMakeFiles/2ndImpl.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fellipe/Projects/private/2ndImpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2ndImpl.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/2ndImpl.dir/main.cpp.o -c /home/fellipe/Projects/private/2ndImpl/main.cpp

CMakeFiles/2ndImpl.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2ndImpl.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fellipe/Projects/private/2ndImpl/main.cpp > CMakeFiles/2ndImpl.dir/main.cpp.i

CMakeFiles/2ndImpl.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2ndImpl.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fellipe/Projects/private/2ndImpl/main.cpp -o CMakeFiles/2ndImpl.dir/main.cpp.s

CMakeFiles/2ndImpl.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/2ndImpl.dir/main.cpp.o.requires

CMakeFiles/2ndImpl.dir/main.cpp.o.provides: CMakeFiles/2ndImpl.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/2ndImpl.dir/build.make CMakeFiles/2ndImpl.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/2ndImpl.dir/main.cpp.o.provides

CMakeFiles/2ndImpl.dir/main.cpp.o.provides.build: CMakeFiles/2ndImpl.dir/main.cpp.o


# Object files for target 2ndImpl
2ndImpl_OBJECTS = \
"CMakeFiles/2ndImpl.dir/main.cpp.o"

# External object files for target 2ndImpl
2ndImpl_EXTERNAL_OBJECTS =

2ndImpl: CMakeFiles/2ndImpl.dir/main.cpp.o
2ndImpl: CMakeFiles/2ndImpl.dir/build.make
2ndImpl: CMakeFiles/2ndImpl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fellipe/Projects/private/2ndImpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2ndImpl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2ndImpl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2ndImpl.dir/build: 2ndImpl

.PHONY : CMakeFiles/2ndImpl.dir/build

CMakeFiles/2ndImpl.dir/requires: CMakeFiles/2ndImpl.dir/main.cpp.o.requires

.PHONY : CMakeFiles/2ndImpl.dir/requires

CMakeFiles/2ndImpl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/2ndImpl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/2ndImpl.dir/clean

CMakeFiles/2ndImpl.dir/depend:
	cd /home/fellipe/Projects/private/2ndImpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fellipe/Projects/private/2ndImpl /home/fellipe/Projects/private/2ndImpl /home/fellipe/Projects/private/2ndImpl/cmake-build-debug /home/fellipe/Projects/private/2ndImpl/cmake-build-debug /home/fellipe/Projects/private/2ndImpl/cmake-build-debug/CMakeFiles/2ndImpl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2ndImpl.dir/depend

