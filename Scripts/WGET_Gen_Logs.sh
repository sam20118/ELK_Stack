#!/bin/bash

# $ sh WGET_Gen_Logs.sh # To run the script.
# OR
# $ ./WGET_Gen_Logs.sh # After setting permissions with: chmod 755 WGET_Gen_Logs.sh
# This is a useful script for adding logs to Kibana to verify everything is working.
# Run this script from a machine that does not have access to your Web VMs!

# Set two variables for the loops below.
x=0
y=0

# Start the outer loop.
while [ $x -lt 10 ]
do
   # Start the inner loop.
   while [ $y -lt 10 ]
   do
      # For status, echo the loop iteration.
      echo "x:$x, y:$y"
	  # This will generate Web traffic logs, and show up in the system monitoring.
	  wget --spider 10.0.0.5
	  wget --spider 10.0.0.6
	  # Iterate the inner loop.
	  y=$((y+1))
   done
   # Iterate the outer loop.
   x=$((x+1))
   # Reset y to ensure the inner loop re-starts on the next iteration of the outer loop.
   y=0
done