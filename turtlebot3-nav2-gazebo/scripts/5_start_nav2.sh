#!/usr/bin/env bash
# Navigation. Terminal 2: start Nav2 (AMCL + planner + controller) with the saved map.
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
MAP="$SCRIPT_DIR/../maps/map.yaml"
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_navigation2 navigation2.launch.py use_sim_time:=True map:="$MAP"
