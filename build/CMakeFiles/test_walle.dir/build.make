# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/sophie/ROS/src/walle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sophie/ROS/src/walle/build

# Include any dependencies generated for this target.
include CMakeFiles/test_walle.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_walle.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_walle.dir/flags.make

CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: CMakeFiles/test_walle.dir/flags.make
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: ../src/detectpeople.cpp
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: ../manifest.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/genmsg/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/genpy/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/cpp_common/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rostime/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/roscpp_traits/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/roscpp_serialization/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/message_runtime/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/catkin/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/gencpp/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/genlisp/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/message_generation/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rosbuild/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rosconsole/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/std_msgs/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rosgraph_msgs/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/xmlrpcpp/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/roscpp/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rosgraph/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rospack/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/roslib/package.xml
CMakeFiles/test_walle.dir/src/detectpeople.cpp.o: /opt/ros/indigo/share/rospy/package.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sophie/ROS/src/walle/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test_walle.dir/src/detectpeople.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_walle.dir/src/detectpeople.cpp.o -c /home/sophie/ROS/src/walle/src/detectpeople.cpp

CMakeFiles/test_walle.dir/src/detectpeople.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_walle.dir/src/detectpeople.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sophie/ROS/src/walle/src/detectpeople.cpp > CMakeFiles/test_walle.dir/src/detectpeople.cpp.i

CMakeFiles/test_walle.dir/src/detectpeople.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_walle.dir/src/detectpeople.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sophie/ROS/src/walle/src/detectpeople.cpp -o CMakeFiles/test_walle.dir/src/detectpeople.cpp.s

CMakeFiles/test_walle.dir/src/detectpeople.cpp.o.requires:
.PHONY : CMakeFiles/test_walle.dir/src/detectpeople.cpp.o.requires

CMakeFiles/test_walle.dir/src/detectpeople.cpp.o.provides: CMakeFiles/test_walle.dir/src/detectpeople.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_walle.dir/build.make CMakeFiles/test_walle.dir/src/detectpeople.cpp.o.provides.build
.PHONY : CMakeFiles/test_walle.dir/src/detectpeople.cpp.o.provides

CMakeFiles/test_walle.dir/src/detectpeople.cpp.o.provides.build: CMakeFiles/test_walle.dir/src/detectpeople.cpp.o

# Object files for target test_walle
test_walle_OBJECTS = \
"CMakeFiles/test_walle.dir/src/detectpeople.cpp.o"

# External object files for target test_walle
test_walle_EXTERNAL_OBJECTS =

../bin/test_walle: CMakeFiles/test_walle.dir/src/detectpeople.cpp.o
../bin/test_walle: CMakeFiles/test_walle.dir/build.make
../bin/test_walle: CMakeFiles/test_walle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/test_walle"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_walle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_walle.dir/build: ../bin/test_walle
.PHONY : CMakeFiles/test_walle.dir/build

CMakeFiles/test_walle.dir/requires: CMakeFiles/test_walle.dir/src/detectpeople.cpp.o.requires
.PHONY : CMakeFiles/test_walle.dir/requires

CMakeFiles/test_walle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_walle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_walle.dir/clean

CMakeFiles/test_walle.dir/depend:
	cd /home/sophie/ROS/src/walle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sophie/ROS/src/walle /home/sophie/ROS/src/walle /home/sophie/ROS/src/walle/build /home/sophie/ROS/src/walle/build /home/sophie/ROS/src/walle/build/CMakeFiles/test_walle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_walle.dir/depend

