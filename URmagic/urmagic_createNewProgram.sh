#!/bin/bash

# Warn user not to remove USB key
echo "! USB MOVE !" | DISPLAY=:0 aosd_cat -R orange -x 230 -y -210 -n "Arial Black 80"

# File name and content
URSCRIPT_FILE="move_robot.urp"
URSCRIPT_CONTENT="# Script to move a UR robot to a specified position\n\n# Define the target position (in meters and radians)\ntarget_position = [0.5, -0.3, 0.4, -1.57, 0, 0]\n\n# Move the robot to the target position\nmovej(target_position, a=1.0, v=0.1)\n"

# Write the content to the URScript file
echo -e "$URSCRIPT_CONTENT" > "/programs/$URSCRIPT_FILE"

# Notify user it is ok to remove USB key
echo "<- USB is done" | DISPLAY=:0 aosd_cat -x 200 -y -210 -n "Arial Black 80"
