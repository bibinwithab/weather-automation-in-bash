#!/bin/bash/

# This script reads a list of cities from a file called cities.txt and uses the wttr.in API to get the weather for each city.

# Loop through each city in the cities.txt file

for city in $(cat cities.txt);
do

	# Use curl to get the weather for the current city from the wttr.in API

	weather=$(curl -s http://wttr.in/$city?format=3)


	# Print the weather for the current city

	echo "The weather for $city is $weather"
done
