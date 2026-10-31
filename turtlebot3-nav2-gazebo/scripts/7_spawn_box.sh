#!/usr/bin/env bash
# Obstacle test. Terminal 4: put a small red box into Gazebo.
# Position (world frame): in the gap between two bottom-row pillars, in front of the robot's start.
# The box is not in the saved map, so the robot must see it with LiDAR and plan around it.
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ros2 run gazebo_ros spawn_entity.py -entity box1 -file "$SCRIPT_DIR/../models/box.sdf" -x -1.1 -y -0.55 -z 0.15
