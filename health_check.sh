#!/bin/bash


echo "Hello from shell script"

npm install curl

# make GET request to '/health' endpoint
response=$(curl -s http://localhost:5000/health)

if["$response" == "ok"];then
  echo "Health check passed: $response"
  exit 0
else
  echo "Health check failed: $response"
  exit 1 # exit status 1 means that the script "fails"
chmod +x ./health_check.sh
