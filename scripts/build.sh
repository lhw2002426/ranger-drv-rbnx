#!/bin/bash
# Build script for ranger_ros2

set -eo pipefail

echo "Building ranger_ros2 packages..."

# Keep ROS builds on the system Python even if the caller has an active conda env.
unset PYTHONHOME
unset PYTHONPATH
unset CONDA_PREFIX
unset CONDA_DEFAULT_ENV
unset CONDA_PROMPT_MODIFIER
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:${PATH}"
export PYTHON_EXECUTABLE=/usr/bin/python3
export Python3_EXECUTABLE=/usr/bin/python3

source /opt/ros/humble/setup.bash
colcon build --symlink-install \
  --cmake-args \
  -DPYTHON_EXECUTABLE=/usr/bin/python3 \
  -DPython3_EXECUTABLE=/usr/bin/python3

echo "ranger_ros2 build completed successfully!"
echo "To use the built packages, run: source install/setup.bash"
