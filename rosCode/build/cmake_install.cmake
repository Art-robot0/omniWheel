# Install script for directory: /home/sz/omniWheelCareRobot/rosCode/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sz/omniWheelCareRobot/rosCode/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/sz/omniWheelCareRobot/rosCode/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/sz/omniWheelCareRobot/rosCode/install" TYPE PROGRAM FILES "/home/sz/omniWheelCareRobot/rosCode/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/sz/omniWheelCareRobot/rosCode/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/sz/omniWheelCareRobot/rosCode/install" TYPE PROGRAM FILES "/home/sz/omniWheelCareRobot/rosCode/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/sz/omniWheelCareRobot/rosCode/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/sz/omniWheelCareRobot/rosCode/install" TYPE FILE FILES "/home/sz/omniWheelCareRobot/rosCode/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/sz/omniWheelCareRobot/rosCode/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/sz/omniWheelCareRobot/rosCode/install" TYPE FILE FILES "/home/sz/omniWheelCareRobot/rosCode/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/sz/omniWheelCareRobot/rosCode/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/sz/omniWheelCareRobot/rosCode/install" TYPE FILE FILES "/home/sz/omniWheelCareRobot/rosCode/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/sz/omniWheelCareRobot/rosCode/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/sz/omniWheelCareRobot/rosCode/install" TYPE FILE FILES "/home/sz/omniWheelCareRobot/rosCode/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/sz/omniWheelCareRobot/rosCode/build/gtest/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/ros_astra_launch/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/ros_arduino_bridge/ros_arduino_bridge/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/ros_arduino_bridge/ros_arduino_python/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/serial/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/ros_arduino_bridge/ros_arduino_msgs/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_msgs/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/teleop_twist_keyboard/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/android_communication/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_bringup/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_calibration/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_navigation/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_testsuite/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/iot_modules/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/ls01d_lidar/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_description/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_description1/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/rplidar_ros/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/ros_astra_camera/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_tasks/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_velocity_smoother/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/razor_imu_9dof/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_follower/cmake_install.cmake")
  include("/home/sz/omniWheelCareRobot/rosCode/build/carebot_auto_gmapping/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/sz/omniWheelCareRobot/rosCode/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
