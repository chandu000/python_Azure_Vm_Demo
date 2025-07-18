#!/bin/bash

# Copy app files
echo "$1" > test.py
echo "$2" > requirements.txt

# Install dependencies
pip3 install -r requirements.txt

# Run app in background
nohup python3 test.py > output.log 2>&1 &

