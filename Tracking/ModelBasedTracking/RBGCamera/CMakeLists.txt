project(tutorial-image)
cmake_minimum_required(VERSION 3.0)
find_package(VISP REQUIRED)
set(tutorial_cpp
  tutorial-mb-generic-tracker.cpp
  tutorial-mb-generic-tracker-live.cpp
 )

foreach(cpp ${tutorial_cpp})
  visp_add_target(${cpp})
  if(COMMAND visp_add_dependency)
    visp_add_dependency(${cpp} "tutorials")
  endif()
endforeach()
