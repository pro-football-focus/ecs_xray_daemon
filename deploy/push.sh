#!/bin/bash -ex
APP_NAME=ecs_xray_daemon
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$DIR/.."

# Extract the application version from the version file
VERSION=$(cat version)

# Push the application image
docker push profootballfocus/$APP_NAME:${VERSION}
