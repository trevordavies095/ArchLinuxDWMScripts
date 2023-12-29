#!/bin/bash

# Get battery avg
bat1=$(cat /sys/class/power_supply/BAT0/capacity)
bat2=$(cat /sys/class/power_supply/BAT1/capacity)
bat_per=$((($bat1+$bat2)/2))

# Check if charging
charging=$(cat /sys/class/power_supply/AC/online)
if [[ "$charging" == "1" ]]
then
    echo "$bat_per% Charging"
else
    echo "$bat_per%"
fi
