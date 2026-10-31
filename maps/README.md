# Map

`map.pgm` and `map.yaml` are the map I built with Cartographer SLAM by driving the robot
around `turtlebot3_world` with the keyboard.

- Size: 124 x 115 cells
- Resolution: 0.05 m per cell
- Origin of the map frame = the robot's spawn pose in Gazebo

The navigation script `scripts/5_start_nav2.sh` loads `maps/map.yaml`.
