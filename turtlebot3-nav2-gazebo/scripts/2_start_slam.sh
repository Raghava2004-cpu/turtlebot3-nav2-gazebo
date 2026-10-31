#!/usr/bin/env bash
# Mapping only. Terminal 2: start Cartographer SLAM + RViz.
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_cartographer cartographer.launch.py use_sim_time:=True
