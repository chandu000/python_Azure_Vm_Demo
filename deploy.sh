#!/bin/bash

APP_DIR=~/python-demo

# Create app folder
mkdir -p $APP_DIR
cd $APP_DIR

# Copy app files
echo "$1" > test.py
echo "$2" > requirements.txt

# Install dependencies
pip3 install -r requirements.txt

# Run app in background
nohup python3 test.py > output.log 2>&1 &

