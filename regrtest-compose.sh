#!/bin/bash

# Install necessary Node modules
docker run -it --rm -w /work -v $(pwd):/work node:6.9.1 npm install

# Start the DB and web services in the background
docker-compose -f docker-compose.yml up -d db web

# Run the regression test service in the foreground
docker-compose -f docker-compose.yml up test

# Stop the environment
docker-compose -f docker-compose.yml down
