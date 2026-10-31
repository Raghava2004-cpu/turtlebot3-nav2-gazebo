#!/usr/bin/env bash
# Terminal 1: start the TurtleBot3 world in Gazebo Classic.
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
