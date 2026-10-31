#!/usr/bin/env bash
# Mapping only. Terminal 3: drive the robot with the keyboard.
# w/x = faster forward/backward, a/d = turn, s = stop.
export TURTLEBOT3_MODEL=burger
ros2 run turtlebot3_teleop teleop_keyboard
