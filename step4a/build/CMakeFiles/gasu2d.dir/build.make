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
CMAKE_SOURCE_DIR = /home/dario/docs/1wu/code/c-cpp/itfp/step4a

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dario/docs/1wu/code/c-cpp/itfp/step4a/build

# Include any dependencies generated for this target.
include CMakeFiles/gasu2d.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gasu2d.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gasu2d.dir/flags.make

CMakeFiles/gasu2d.dir/gaus2d.cpp.o: CMakeFiles/gasu2d.dir/flags.make
CMakeFiles/gasu2d.dir/gaus2d.cpp.o: ../gaus2d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dario/docs/1wu/code/c-cpp/itfp/step4a/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gasu2d.dir/gaus2d.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gasu2d.dir/gaus2d.cpp.o -c /home/dario/docs/1wu/code/c-cpp/itfp/step4a/gaus2d.cpp

CMakeFiles/gasu2d.dir/gaus2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gasu2d.dir/gaus2d.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dario/docs/1wu/code/c-cpp/itfp/step4a/gaus2d.cpp > CMakeFiles/gasu2d.dir/gaus2d.cpp.i

CMakeFiles/gasu2d.dir/gaus2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gasu2d.dir/gaus2d.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dario/docs/1wu/code/c-cpp/itfp/step4a/gaus2d.cpp -o CMakeFiles/gasu2d.dir/gaus2d.cpp.s

CMakeFiles/gasu2d.dir/gaus2d.cpp.o.requires:

.PHONY : CMakeFiles/gasu2d.dir/gaus2d.cpp.o.requires

CMakeFiles/gasu2d.dir/gaus2d.cpp.o.provides: CMakeFiles/gasu2d.dir/gaus2d.cpp.o.requires
	$(MAKE) -f CMakeFiles/gasu2d.dir/build.make CMakeFiles/gasu2d.dir/gaus2d.cpp.o.provides.build
.PHONY : CMakeFiles/gasu2d.dir/gaus2d.cpp.o.provides

CMakeFiles/gasu2d.dir/gaus2d.cpp.o.provides.build: CMakeFiles/gasu2d.dir/gaus2d.cpp.o


# Object files for target gasu2d
gasu2d_OBJECTS = \
"CMakeFiles/gasu2d.dir/gaus2d.cpp.o"

# External object files for target gasu2d
gasu2d_EXTERNAL_OBJECTS =

gasu2d: CMakeFiles/gasu2d.dir/gaus2d.cpp.o
gasu2d: CMakeFiles/gasu2d.dir/build.make
gasu2d: gaus2ddir/libgaus2dgen.a
gasu2d: random/librandom.a
gasu2d: CMakeFiles/gasu2d.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dario/docs/1wu/code/c-cpp/itfp/step4a/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable gasu2d"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gasu2d.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gasu2d.dir/build: gasu2d

.PHONY : CMakeFiles/gasu2d.dir/build

CMakeFiles/gasu2d.dir/requires: CMakeFiles/gasu2d.dir/gaus2d.cpp.o.requires

.PHONY : CMakeFiles/gasu2d.dir/requires

CMakeFiles/gasu2d.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gasu2d.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gasu2d.dir/clean

CMakeFiles/gasu2d.dir/depend:
	cd /home/dario/docs/1wu/code/c-cpp/itfp/step4a/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dario/docs/1wu/code/c-cpp/itfp/step4a /home/dario/docs/1wu/code/c-cpp/itfp/step4a /home/dario/docs/1wu/code/c-cpp/itfp/step4a/build /home/dario/docs/1wu/code/c-cpp/itfp/step4a/build /home/dario/docs/1wu/code/c-cpp/itfp/step4a/build/CMakeFiles/gasu2d.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gasu2d.dir/depend

