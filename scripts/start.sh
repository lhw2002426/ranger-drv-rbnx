#!/bin/bash

set -eo pipefail

# Match the build environment so ROS tooling does not pick an active conda Python.
unset PYTHONHOME
unset PYTHONPATH
unset CONDA_PREFIX
unset CONDA_DEFAULT_ENV
unset CONDA_PROMPT_MODIFIER
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:${PATH}"
export PYTHON_EXECUTABLE=/usr/bin/python3
export Python3_EXECUTABLE=/usr/bin/python3

source /opt/ros/humble/setup.bash
source install/setup.sh
exec ros2 launch ranger_bringup ranger_mini_v2.launch.xml publish_odom_tf:=true port_name:=can_ranger
