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
include CMakeFiles/language_17.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/language_17.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/language_17.dir/flags.make

CMakeFiles/language_17.dir/src/17_type_alias.cpp.o: CMakeFiles/language_17.dir/flags.make
CMakeFiles/language_17.dir/src/17_type_alias.cpp.o: ../src/17_type_alias.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/BasicCpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/language_17.dir/src/17_type_alias.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/language_17.dir/src/17_type_alias.cpp.o -c /tmp/BasicCpp/src/17_type_alias.cpp

CMakeFiles/language_17.dir/src/17_type_alias.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/language_17.dir/src/17_type_alias.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/BasicCpp/src/17_type_alias.cpp > CMakeFiles/language_17.dir/src/17_type_alias.cpp.i

CMakeFiles/language_17.dir/src/17_type_alias.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/language_17.dir/src/17_type_alias.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/BasicCpp/src/17_type_alias.cpp -o CMakeFiles/language_17.dir/src/17_type_alias.cpp.s

# Object files for target language_17
language_17_OBJECTS = \
"CMakeFiles/language_17.dir/src/17_type_alias.cpp.o"

# External object files for target language_17
language_17_EXTERNAL_OBJECTS =

language_17: CMakeFiles/language_17.dir/src/17_type_alias.cpp.o
language_17: CMakeFiles/language_17.dir/build.make
language_17: CMakeFiles/language_17.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/BasicCpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable language_17"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/language_17.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/language_17.dir/build: language_17

.PHONY : CMakeFiles/language_17.dir/build

CMakeFiles/language_17.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/language_17.dir/cmake_clean.cmake
.PHONY : CMakeFiles/language_17.dir/clean

CMakeFiles/language_17.dir/depend:
	cd /tmp/BasicCpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/BasicCpp /tmp/BasicCpp /tmp/BasicCpp/cmake-build-debug /tmp/BasicCpp/cmake-build-debug /tmp/BasicCpp/cmake-build-debug/CMakeFiles/language_17.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/language_17.dir/depend

