# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "multi_pub_package: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imulti_pub_package:/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(multi_pub_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg" NAME_WE)
add_custom_target(_multi_pub_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multi_pub_package" "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(multi_pub_package
  "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_pub_package
)

### Generating Services

### Generating Module File
_generate_module_cpp(multi_pub_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_pub_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(multi_pub_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(multi_pub_package_generate_messages multi_pub_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg" NAME_WE)
add_dependencies(multi_pub_package_generate_messages_cpp _multi_pub_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_pub_package_gencpp)
add_dependencies(multi_pub_package_gencpp multi_pub_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_pub_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(multi_pub_package
  "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_pub_package
)

### Generating Services

### Generating Module File
_generate_module_eus(multi_pub_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_pub_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(multi_pub_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(multi_pub_package_generate_messages multi_pub_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg" NAME_WE)
add_dependencies(multi_pub_package_generate_messages_eus _multi_pub_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_pub_package_geneus)
add_dependencies(multi_pub_package_geneus multi_pub_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_pub_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(multi_pub_package
  "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_pub_package
)

### Generating Services

### Generating Module File
_generate_module_lisp(multi_pub_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_pub_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(multi_pub_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(multi_pub_package_generate_messages multi_pub_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg" NAME_WE)
add_dependencies(multi_pub_package_generate_messages_lisp _multi_pub_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_pub_package_genlisp)
add_dependencies(multi_pub_package_genlisp multi_pub_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_pub_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(multi_pub_package
  "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_pub_package
)

### Generating Services

### Generating Module File
_generate_module_nodejs(multi_pub_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_pub_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(multi_pub_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(multi_pub_package_generate_messages multi_pub_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg" NAME_WE)
add_dependencies(multi_pub_package_generate_messages_nodejs _multi_pub_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_pub_package_gennodejs)
add_dependencies(multi_pub_package_gennodejs multi_pub_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_pub_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(multi_pub_package
  "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_pub_package
)

### Generating Services

### Generating Module File
_generate_module_py(multi_pub_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_pub_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(multi_pub_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(multi_pub_package_generate_messages multi_pub_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartik/REALSENSE/multi_cam_ws/src/multi_pub_package/msg/stateMsg.msg" NAME_WE)
add_dependencies(multi_pub_package_generate_messages_py _multi_pub_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_pub_package_genpy)
add_dependencies(multi_pub_package_genpy multi_pub_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_pub_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_pub_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_pub_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(multi_pub_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_pub_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_pub_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(multi_pub_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_pub_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_pub_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(multi_pub_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_pub_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_pub_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(multi_pub_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_pub_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_pub_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_pub_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(multi_pub_package_generate_messages_py std_msgs_generate_messages_py)
endif()
