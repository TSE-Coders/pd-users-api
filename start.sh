#!/bin/bash

# Get runtime version
VERSION=$(cat version)

# Setup asdf variables
ASDF_BIN_DIR="/home/ubuntu/.asdf/bin"
ASDF_STARTUP_SCRIPT="/home/ubuntu/.asdf/asdf.sh"

# Load asdf
source $ASDF_STARTUP_SCRIPT

# Install the proper runtime version
$ASDF_BIN_DIR/asdf install ruby $VERSION
$ASDF_BIN_DIR/asdf local ruby $VERSION

# Load changes
source $ASDF_STARTUP_SCRIPT

# install project dependencies and run project
$ASDF_BIN_DIR/asdf exec bundler install
$ASDF_BIN_DIR/asdf exec rails db:migrate
$ASDF_BIN_DIR/asdf exec rails db:seed
$ASDF_BIN_DIR/asdf exec rails s

