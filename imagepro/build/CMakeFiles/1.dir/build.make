# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/diego/eda/tarea2/eda_cpp/imagepro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/diego/eda/tarea2/eda_cpp/imagepro/build

# Include any dependencies generated for this target.
include CMakeFiles/1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1.dir/flags.make

CMakeFiles/1.dir/imagepro.cpp.o: CMakeFiles/1.dir/flags.make
CMakeFiles/1.dir/imagepro.cpp.o: ../imagepro.cpp
CMakeFiles/1.dir/imagepro.cpp.o: CMakeFiles/1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1.dir/imagepro.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1.dir/imagepro.cpp.o -MF CMakeFiles/1.dir/imagepro.cpp.o.d -o CMakeFiles/1.dir/imagepro.cpp.o -c /home/diego/eda/tarea2/eda_cpp/imagepro/imagepro.cpp

CMakeFiles/1.dir/imagepro.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.dir/imagepro.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diego/eda/tarea2/eda_cpp/imagepro/imagepro.cpp > CMakeFiles/1.dir/imagepro.cpp.i

CMakeFiles/1.dir/imagepro.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.dir/imagepro.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diego/eda/tarea2/eda_cpp/imagepro/imagepro.cpp -o CMakeFiles/1.dir/imagepro.cpp.s

CMakeFiles/1.dir/src/image.cpp.o: CMakeFiles/1.dir/flags.make
CMakeFiles/1.dir/src/image.cpp.o: ../src/image.cpp
CMakeFiles/1.dir/src/image.cpp.o: CMakeFiles/1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/1.dir/src/image.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1.dir/src/image.cpp.o -MF CMakeFiles/1.dir/src/image.cpp.o.d -o CMakeFiles/1.dir/src/image.cpp.o -c /home/diego/eda/tarea2/eda_cpp/imagepro/src/image.cpp

CMakeFiles/1.dir/src/image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.dir/src/image.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diego/eda/tarea2/eda_cpp/imagepro/src/image.cpp > CMakeFiles/1.dir/src/image.cpp.i

CMakeFiles/1.dir/src/image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.dir/src/image.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diego/eda/tarea2/eda_cpp/imagepro/src/image.cpp -o CMakeFiles/1.dir/src/image.cpp.s

CMakeFiles/1.dir/src/listofpoint2d.cpp.o: CMakeFiles/1.dir/flags.make
CMakeFiles/1.dir/src/listofpoint2d.cpp.o: ../src/listofpoint2d.cpp
CMakeFiles/1.dir/src/listofpoint2d.cpp.o: CMakeFiles/1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/1.dir/src/listofpoint2d.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1.dir/src/listofpoint2d.cpp.o -MF CMakeFiles/1.dir/src/listofpoint2d.cpp.o.d -o CMakeFiles/1.dir/src/listofpoint2d.cpp.o -c /home/diego/eda/tarea2/eda_cpp/imagepro/src/listofpoint2d.cpp

CMakeFiles/1.dir/src/listofpoint2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.dir/src/listofpoint2d.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diego/eda/tarea2/eda_cpp/imagepro/src/listofpoint2d.cpp > CMakeFiles/1.dir/src/listofpoint2d.cpp.i

CMakeFiles/1.dir/src/listofpoint2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.dir/src/listofpoint2d.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diego/eda/tarea2/eda_cpp/imagepro/src/listofpoint2d.cpp -o CMakeFiles/1.dir/src/listofpoint2d.cpp.s

CMakeFiles/1.dir/src/listofregion.cpp.o: CMakeFiles/1.dir/flags.make
CMakeFiles/1.dir/src/listofregion.cpp.o: ../src/listofregion.cpp
CMakeFiles/1.dir/src/listofregion.cpp.o: CMakeFiles/1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/1.dir/src/listofregion.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1.dir/src/listofregion.cpp.o -MF CMakeFiles/1.dir/src/listofregion.cpp.o.d -o CMakeFiles/1.dir/src/listofregion.cpp.o -c /home/diego/eda/tarea2/eda_cpp/imagepro/src/listofregion.cpp

CMakeFiles/1.dir/src/listofregion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.dir/src/listofregion.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diego/eda/tarea2/eda_cpp/imagepro/src/listofregion.cpp > CMakeFiles/1.dir/src/listofregion.cpp.i

CMakeFiles/1.dir/src/listofregion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.dir/src/listofregion.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diego/eda/tarea2/eda_cpp/imagepro/src/listofregion.cpp -o CMakeFiles/1.dir/src/listofregion.cpp.s

CMakeFiles/1.dir/src/nodepoint2d.cpp.o: CMakeFiles/1.dir/flags.make
CMakeFiles/1.dir/src/nodepoint2d.cpp.o: ../src/nodepoint2d.cpp
CMakeFiles/1.dir/src/nodepoint2d.cpp.o: CMakeFiles/1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/1.dir/src/nodepoint2d.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1.dir/src/nodepoint2d.cpp.o -MF CMakeFiles/1.dir/src/nodepoint2d.cpp.o.d -o CMakeFiles/1.dir/src/nodepoint2d.cpp.o -c /home/diego/eda/tarea2/eda_cpp/imagepro/src/nodepoint2d.cpp

CMakeFiles/1.dir/src/nodepoint2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.dir/src/nodepoint2d.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diego/eda/tarea2/eda_cpp/imagepro/src/nodepoint2d.cpp > CMakeFiles/1.dir/src/nodepoint2d.cpp.i

CMakeFiles/1.dir/src/nodepoint2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.dir/src/nodepoint2d.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diego/eda/tarea2/eda_cpp/imagepro/src/nodepoint2d.cpp -o CMakeFiles/1.dir/src/nodepoint2d.cpp.s

CMakeFiles/1.dir/src/noderegion.cpp.o: CMakeFiles/1.dir/flags.make
CMakeFiles/1.dir/src/noderegion.cpp.o: ../src/noderegion.cpp
CMakeFiles/1.dir/src/noderegion.cpp.o: CMakeFiles/1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/1.dir/src/noderegion.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1.dir/src/noderegion.cpp.o -MF CMakeFiles/1.dir/src/noderegion.cpp.o.d -o CMakeFiles/1.dir/src/noderegion.cpp.o -c /home/diego/eda/tarea2/eda_cpp/imagepro/src/noderegion.cpp

CMakeFiles/1.dir/src/noderegion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.dir/src/noderegion.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diego/eda/tarea2/eda_cpp/imagepro/src/noderegion.cpp > CMakeFiles/1.dir/src/noderegion.cpp.i

CMakeFiles/1.dir/src/noderegion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.dir/src/noderegion.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diego/eda/tarea2/eda_cpp/imagepro/src/noderegion.cpp -o CMakeFiles/1.dir/src/noderegion.cpp.s

CMakeFiles/1.dir/src/point2D.cpp.o: CMakeFiles/1.dir/flags.make
CMakeFiles/1.dir/src/point2D.cpp.o: ../src/point2D.cpp
CMakeFiles/1.dir/src/point2D.cpp.o: CMakeFiles/1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/1.dir/src/point2D.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1.dir/src/point2D.cpp.o -MF CMakeFiles/1.dir/src/point2D.cpp.o.d -o CMakeFiles/1.dir/src/point2D.cpp.o -c /home/diego/eda/tarea2/eda_cpp/imagepro/src/point2D.cpp

CMakeFiles/1.dir/src/point2D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.dir/src/point2D.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diego/eda/tarea2/eda_cpp/imagepro/src/point2D.cpp > CMakeFiles/1.dir/src/point2D.cpp.i

CMakeFiles/1.dir/src/point2D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.dir/src/point2D.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diego/eda/tarea2/eda_cpp/imagepro/src/point2D.cpp -o CMakeFiles/1.dir/src/point2D.cpp.s

CMakeFiles/1.dir/src/region.cpp.o: CMakeFiles/1.dir/flags.make
CMakeFiles/1.dir/src/region.cpp.o: ../src/region.cpp
CMakeFiles/1.dir/src/region.cpp.o: CMakeFiles/1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/1.dir/src/region.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1.dir/src/region.cpp.o -MF CMakeFiles/1.dir/src/region.cpp.o.d -o CMakeFiles/1.dir/src/region.cpp.o -c /home/diego/eda/tarea2/eda_cpp/imagepro/src/region.cpp

CMakeFiles/1.dir/src/region.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.dir/src/region.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diego/eda/tarea2/eda_cpp/imagepro/src/region.cpp > CMakeFiles/1.dir/src/region.cpp.i

CMakeFiles/1.dir/src/region.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.dir/src/region.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diego/eda/tarea2/eda_cpp/imagepro/src/region.cpp -o CMakeFiles/1.dir/src/region.cpp.s

# Object files for target 1
1_OBJECTS = \
"CMakeFiles/1.dir/imagepro.cpp.o" \
"CMakeFiles/1.dir/src/image.cpp.o" \
"CMakeFiles/1.dir/src/listofpoint2d.cpp.o" \
"CMakeFiles/1.dir/src/listofregion.cpp.o" \
"CMakeFiles/1.dir/src/nodepoint2d.cpp.o" \
"CMakeFiles/1.dir/src/noderegion.cpp.o" \
"CMakeFiles/1.dir/src/point2D.cpp.o" \
"CMakeFiles/1.dir/src/region.cpp.o"

# External object files for target 1
1_EXTERNAL_OBJECTS =

1 : CMakeFiles/1.dir/imagepro.cpp.o
1 : CMakeFiles/1.dir/src/image.cpp.o
1 : CMakeFiles/1.dir/src/listofpoint2d.cpp.o
1 : CMakeFiles/1.dir/src/listofregion.cpp.o
1 : CMakeFiles/1.dir/src/nodepoint2d.cpp.o
1 : CMakeFiles/1.dir/src/noderegion.cpp.o
1 : CMakeFiles/1.dir/src/point2D.cpp.o
1 : CMakeFiles/1.dir/src/region.cpp.o
1 : CMakeFiles/1.dir/build.make
1 : CMakeFiles/1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable 1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1.dir/build: 1
.PHONY : CMakeFiles/1.dir/build

CMakeFiles/1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/1.dir/clean

CMakeFiles/1.dir/depend:
	cd /home/diego/eda/tarea2/eda_cpp/imagepro/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/diego/eda/tarea2/eda_cpp/imagepro /home/diego/eda/tarea2/eda_cpp/imagepro /home/diego/eda/tarea2/eda_cpp/imagepro/build /home/diego/eda/tarea2/eda_cpp/imagepro/build /home/diego/eda/tarea2/eda_cpp/imagepro/build/CMakeFiles/1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/1.dir/depend

