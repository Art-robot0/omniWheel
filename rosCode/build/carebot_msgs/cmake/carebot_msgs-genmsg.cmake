# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "carebot_msgs: 1 messages, 2 services")

set(MSG_I_FLAGS "-Icarebot_msgs:/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(carebot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv" NAME_WE)
add_custom_target(_carebot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "carebot_msgs" "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv" ""
)

get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv" NAME_WE)
add_custom_target(_carebot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "carebot_msgs" "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv" ""
)

get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg" NAME_WE)
add_custom_target(_carebot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "carebot_msgs" "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carebot_msgs
)

### Generating Services
_generate_srv_cpp(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carebot_msgs
)
_generate_srv_cpp(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carebot_msgs
)

### Generating Module File
_generate_module_cpp(carebot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carebot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(carebot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(carebot_msgs_generate_messages carebot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_cpp _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_cpp _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_cpp _carebot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carebot_msgs_gencpp)
add_dependencies(carebot_msgs_gencpp carebot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carebot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carebot_msgs
)

### Generating Services
_generate_srv_eus(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carebot_msgs
)
_generate_srv_eus(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carebot_msgs
)

### Generating Module File
_generate_module_eus(carebot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carebot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(carebot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(carebot_msgs_generate_messages carebot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_eus _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_eus _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_eus _carebot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carebot_msgs_geneus)
add_dependencies(carebot_msgs_geneus carebot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carebot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carebot_msgs
)

### Generating Services
_generate_srv_lisp(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carebot_msgs
)
_generate_srv_lisp(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carebot_msgs
)

### Generating Module File
_generate_module_lisp(carebot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carebot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(carebot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(carebot_msgs_generate_messages carebot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_lisp _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_lisp _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_lisp _carebot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carebot_msgs_genlisp)
add_dependencies(carebot_msgs_genlisp carebot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carebot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carebot_msgs
)

### Generating Services
_generate_srv_nodejs(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carebot_msgs
)
_generate_srv_nodejs(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carebot_msgs
)

### Generating Module File
_generate_module_nodejs(carebot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carebot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(carebot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(carebot_msgs_generate_messages carebot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_nodejs _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_nodejs _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_nodejs _carebot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carebot_msgs_gennodejs)
add_dependencies(carebot_msgs_gennodejs carebot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carebot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carebot_msgs
)

### Generating Services
_generate_srv_py(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carebot_msgs
)
_generate_srv_py(carebot_msgs
  "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carebot_msgs
)

### Generating Module File
_generate_module_py(carebot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carebot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(carebot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(carebot_msgs_generate_messages carebot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_py _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_py _carebot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(carebot_msgs_generate_messages_py _carebot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(carebot_msgs_genpy)
add_dependencies(carebot_msgs_genpy carebot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS carebot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carebot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/carebot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(carebot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(carebot_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carebot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/carebot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(carebot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(carebot_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carebot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/carebot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(carebot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(carebot_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carebot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/carebot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(carebot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(carebot_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carebot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carebot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/carebot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(carebot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(carebot_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
