#!/bin/bash

# Kill by process name as fallback
pkill -f "ranger_bringup" || true

exit 0