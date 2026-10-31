#!/usr/bin/env bash
# Mapping only. Save the map built by SLAM into the repo's maps/ folder.
# Run this from the repo root while SLAM is still running.
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ros2 run nav2_map_server map_saver_cli -f "$SCRIPT_DIR/../maps/map"
