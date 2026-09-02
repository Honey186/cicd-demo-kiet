#!/bin/bash
usage=$(df / | tail -1 | awk '{print $5}' | tr -d '%')
if [ "$usage" -gt 0 ]; then
    echo "CRITICAL: disk is ${usage}% full"
    exit 1
else
    echo "OK: disk is ${usage}% used"
    exit 0
fi
