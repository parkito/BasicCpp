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
CMAKE_SOURCE_DIR = /tmp/BasicCpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/BasicCpp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/language_04.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/language_04.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/language_04.dir/flags.make

CMakeFiles/language_04.dir/src/04_conditional.cpp.o: CMakeFiles/language_04.dir/flags.make
CMakeFiles/language_04.dir/src/04_conditional.cpp.o: ../src/04_conditional.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/BasicCpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/language_04.dir/src/04_conditional.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/language_04.dir/src/04_conditional.cpp.o -c /tmp/BasicCpp/src/04_conditional.cpp

CMakeFiles/language_04.dir/src/04_conditional.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/language_04.dir/src/04_conditional.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/BasicCpp/src/04_conditional.cpp > CMakeFiles/language_04.dir/src/04_conditional.cpp.i

CMakeFiles/language_04.dir/src/04_conditional.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/language_04.dir/src/04_conditional.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/BasicCpp/src/04_conditional.cpp -o CMakeFiles/language_04.dir/src/04_conditional.cpp.s

# Object files for target language_04
language_04_OBJECTS = \
"CMakeFiles/language_04.dir/src/04_conditional.cpp.o"

# External object files for target language_04
language_04_EXTERNAL_OBJECTS =

language_04: CMakeFiles/language_04.dir/src/04_conditional.cpp.o
language_04: CMakeFiles/language_04.dir/build.make
language_04: CMakeFiles/language_04.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/BasicCpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable language_04"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/language_04.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/language_04.dir/build: language_04

.PHONY : CMakeFiles/language_04.dir/build

CMakeFiles/language_04.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/language_04.dir/cmake_clean.cmake
.PHONY : CMakeFiles/language_04.dir/clean

CMakeFiles/language_04.dir/depend:
	cd /tmp/BasicCpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/BasicCpp /tmp/BasicCpp /tmp/BasicCpp/cmake-build-debug /tmp/BasicCpp/cmake-build-debug /tmp/BasicCpp/cmake-build-debug/CMakeFiles/language_04.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/language_04.dir/depend

