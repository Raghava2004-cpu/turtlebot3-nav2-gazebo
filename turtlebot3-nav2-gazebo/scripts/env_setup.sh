#!/usr/bin/env bash
# One-time environment setup. Adds the needed lines to ~/.bashrc.
# Run once:  bash scripts/env_setup.sh   then open a new terminal.

add_line() {
  grep -qxF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}

add_line 'source /opt/ros/humble/setup.bash'
add_line 'source /usr/share/gazebo/setup.sh'
add_line 'export TURTLEBOT3_MODEL=burger'
add_line 'export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models'
add_line 'export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp'

# Optional (WSL2 only): use the NVIDIA GPU instead of the Intel iGPU for Gazebo/RViz.
# Remove this line if Gazebo shows a black screen.
add_line 'export MESA_D3D12_DEFAULT_ADAPTER_NAME=NVIDIA'

echo "Done. Open a new terminal (or run: source ~/.bashrc)."
