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
CMAKE_SOURCE_DIR = /home/hxc/visp-ws/VISPLearning/ImageProcessing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hxc/visp-ws/VISPLearning/ImageProcessing/build

# Include any dependencies generated for this target.
include CMakeFiles/tutorial-flood-fill.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tutorial-flood-fill.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tutorial-flood-fill.dir/flags.make

CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.o: CMakeFiles/tutorial-flood-fill.dir/flags.make
CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.o: ../tutorial-flood-fill.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxc/visp-ws/VISPLearning/ImageProcessing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.o -c /home/hxc/visp-ws/VISPLearning/ImageProcessing/tutorial-flood-fill.cpp

CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxc/visp-ws/VISPLearning/ImageProcessing/tutorial-flood-fill.cpp > CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.i

CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxc/visp-ws/VISPLearning/ImageProcessing/tutorial-flood-fill.cpp -o CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.s

# Object files for target tutorial-flood-fill
tutorial__flood__fill_OBJECTS = \
"CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.o"

# External object files for target tutorial-flood-fill
tutorial__flood__fill_EXTERNAL_OBJECTS =

tutorial-flood-fill: CMakeFiles/tutorial-flood-fill.dir/tutorial-flood-fill.cpp.o
tutorial-flood-fill: CMakeFiles/tutorial-flood-fill.dir/build.make
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_vs.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_tt_mi.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_tt.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_mbt.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_klt.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_robot.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_imgproc.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_gui.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_detection.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_ar.so.3.5.1
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_sensor.so.3.5.1
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libv4l2.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libv4lconvert.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libdc1394.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libSM.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libICE.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libX11.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libXext.so
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_vision.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_visual_features.so.3.5.1
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_me.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_blob.so.3.5.1
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_io.so.3.5.1
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libjpeg.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libpng.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
tutorial-flood-fill: /home/hxc/visp-ws/visp-build/lib/libvisp_core.so.3.5.1
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/liblapack.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libblas.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libxml2.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libpthread.so
tutorial-flood-fill: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libpthread.so
tutorial-flood-fill: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libz.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libzbar.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libm.so
tutorial-flood-fill: /usr/lib/x86_64-linux-gnu/libnsl.so
tutorial-flood-fill: CMakeFiles/tutorial-flood-fill.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hxc/visp-ws/VISPLearning/ImageProcessing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tutorial-flood-fill"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial-flood-fill.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tutorial-flood-fill.dir/build: tutorial-flood-fill

.PHONY : CMakeFiles/tutorial-flood-fill.dir/build

CMakeFiles/tutorial-flood-fill.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tutorial-flood-fill.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tutorial-flood-fill.dir/clean

CMakeFiles/tutorial-flood-fill.dir/depend:
	cd /home/hxc/visp-ws/VISPLearning/ImageProcessing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hxc/visp-ws/VISPLearning/ImageProcessing /home/hxc/visp-ws/VISPLearning/ImageProcessing /home/hxc/visp-ws/VISPLearning/ImageProcessing/build /home/hxc/visp-ws/VISPLearning/ImageProcessing/build /home/hxc/visp-ws/VISPLearning/ImageProcessing/build/CMakeFiles/tutorial-flood-fill.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tutorial-flood-fill.dir/depend

