project(tutorial-image)
cmake_minimum_required(VERSION 3.0)
find_package(VISP REQUIRED)
set(tutorial_cpp
  tutorial-brightness-adjustment.cpp
  tutorial-contrast-sharpening.cpp
  tutorial-autothreshold.cpp
  tutorial-contour.cpp
  tutorial-connected-components.cpp
  tutorial-flood-fill.cpp
  tutorial-count-coins.cpp
 )

foreach(cpp ${tutorial_cpp})
  visp_add_target(${cpp})
  if(COMMAND visp_add_dependency)
    visp_add_dependency(${cpp} "tutorials")
  endif()
endforeach()
