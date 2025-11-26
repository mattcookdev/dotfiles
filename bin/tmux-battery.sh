#!/bin/bash

# Tmux battery status script for macOS
# Displays battery percentage with a colored visual bar

# Get battery percentage and charging status
battery_info=$(pmset -g batt)
battery_percent=$(echo "$battery_info" | grep -o '[0-9]\+%' | tr -d '%')

# Check if charging
if echo "$battery_info" | grep -q "AC Power"; then
    charging=true
else
    charging=false
fi

# Default to 0 if battery_percent is empty
if [ -z "$battery_percent" ]; then
    battery_percent=0
fi

# Determine color based on battery level
if [ $battery_percent -ge 60 ]; then
    color="#[fg=green]"
elif [ $battery_percent -ge 30 ]; then
    color="#[fg=yellow]"
else
    color="#[fg=red]"
fi

# Generate visual bar (10 blocks max)
blocks=$((battery_percent / 10))
bar=""
for ((i=0; i<blocks; i++)); do
    bar="${bar}◼"
done
for ((i=blocks; i<10; i++)); do
    bar="${bar}◻"
done

# Add charging indicator if on AC power
if [ "$charging" = true ]; then
    charging_icon="⚡"
else
    charging_icon=""
fi

# Output format with color
echo "#[default]| ${color}${bar} ${charging_icon}$battery_percent%#[default]"
