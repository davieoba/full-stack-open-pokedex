#!/bin/bash

echo "Build script"

# add the commands here
npm install && npm run build
chmod +x ./build_step.sh