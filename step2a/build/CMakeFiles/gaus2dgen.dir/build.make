# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/dario/docs/1wu/code/c-cpp/itfp/step2a

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dario/docs/1wu/code/c-cpp/itfp/step2a/build

# Include any dependencies generated for this target.
include CMakeFiles/gaus2dgen.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gaus2dgen.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gaus2dgen.dir/flags.make

CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o: CMakeFiles/gaus2dgen.dir/flags.make
CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o: ../gaus2dgen.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dario/docs/1wu/code/c-cpp/itfp/step2a/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o -c /home/dario/docs/1wu/code/c-cpp/itfp/step2a/gaus2dgen.cpp

CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dario/docs/1wu/code/c-cpp/itfp/step2a/gaus2dgen.cpp > CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.i

CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dario/docs/1wu/code/c-cpp/itfp/step2a/gaus2dgen.cpp -o CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.s

CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o.requires:

.PHONY : CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o.requires

CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o.provides: CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o.requires
	$(MAKE) -f CMakeFiles/gaus2dgen.dir/build.make CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o.provides.build
.PHONY : CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o.provides

CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o.provides.build: CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o


# Object files for target gaus2dgen
gaus2dgen_OBJECTS = \
"CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o"

# External object files for target gaus2dgen
gaus2dgen_EXTERNAL_OBJECTS =

libgaus2dgen.a: CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o
libgaus2dgen.a: CMakeFiles/gaus2dgen.dir/build.make
libgaus2dgen.a: CMakeFiles/gaus2dgen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dario/docs/1wu/code/c-cpp/itfp/step2a/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgaus2dgen.a"
	$(CMAKE_COMMAND) -P CMakeFiles/gaus2dgen.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gaus2dgen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gaus2dgen.dir/build: libgaus2dgen.a

.PHONY : CMakeFiles/gaus2dgen.dir/build

CMakeFiles/gaus2dgen.dir/requires: CMakeFiles/gaus2dgen.dir/gaus2dgen.cpp.o.requires

.PHONY : CMakeFiles/gaus2dgen.dir/requires

CMakeFiles/gaus2dgen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gaus2dgen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gaus2dgen.dir/clean

CMakeFiles/gaus2dgen.dir/depend:
	cd /home/dario/docs/1wu/code/c-cpp/itfp/step2a/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dario/docs/1wu/code/c-cpp/itfp/step2a /home/dario/docs/1wu/code/c-cpp/itfp/step2a /home/dario/docs/1wu/code/c-cpp/itfp/step2a/build /home/dario/docs/1wu/code/c-cpp/itfp/step2a/build /home/dario/docs/1wu/code/c-cpp/itfp/step2a/build/CMakeFiles/gaus2dgen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gaus2dgen.dir/depend

