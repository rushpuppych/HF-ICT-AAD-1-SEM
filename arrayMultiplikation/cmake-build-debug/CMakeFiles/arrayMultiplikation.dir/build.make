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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/arrayMultiplikation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/arrayMultiplikation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/arrayMultiplikation.dir/flags.make

CMakeFiles/arrayMultiplikation.dir/main.cpp.o: CMakeFiles/arrayMultiplikation.dir/flags.make
CMakeFiles/arrayMultiplikation.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/arrayMultiplikation.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/arrayMultiplikation.dir/main.cpp.o -c /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/main.cpp

CMakeFiles/arrayMultiplikation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/arrayMultiplikation.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/main.cpp > CMakeFiles/arrayMultiplikation.dir/main.cpp.i

CMakeFiles/arrayMultiplikation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/arrayMultiplikation.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/main.cpp -o CMakeFiles/arrayMultiplikation.dir/main.cpp.s

CMakeFiles/arrayMultiplikation.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/arrayMultiplikation.dir/main.cpp.o.requires

CMakeFiles/arrayMultiplikation.dir/main.cpp.o.provides: CMakeFiles/arrayMultiplikation.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/arrayMultiplikation.dir/build.make CMakeFiles/arrayMultiplikation.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/arrayMultiplikation.dir/main.cpp.o.provides

CMakeFiles/arrayMultiplikation.dir/main.cpp.o.provides.build: CMakeFiles/arrayMultiplikation.dir/main.cpp.o


# Object files for target arrayMultiplikation
arrayMultiplikation_OBJECTS = \
"CMakeFiles/arrayMultiplikation.dir/main.cpp.o"

# External object files for target arrayMultiplikation
arrayMultiplikation_EXTERNAL_OBJECTS =

arrayMultiplikation: CMakeFiles/arrayMultiplikation.dir/main.cpp.o
arrayMultiplikation: CMakeFiles/arrayMultiplikation.dir/build.make
arrayMultiplikation: CMakeFiles/arrayMultiplikation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable arrayMultiplikation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/arrayMultiplikation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/arrayMultiplikation.dir/build: arrayMultiplikation

.PHONY : CMakeFiles/arrayMultiplikation.dir/build

CMakeFiles/arrayMultiplikation.dir/requires: CMakeFiles/arrayMultiplikation.dir/main.cpp.o.requires

.PHONY : CMakeFiles/arrayMultiplikation.dir/requires

CMakeFiles/arrayMultiplikation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/arrayMultiplikation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/arrayMultiplikation.dir/clean

CMakeFiles/arrayMultiplikation.dir/depend:
	cd /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/cmake-build-debug /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/cmake-build-debug /Users/anuuthomson/ClionProjects/AAD/arrayMultiplikation/cmake-build-debug/CMakeFiles/arrayMultiplikation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/arrayMultiplikation.dir/depend
