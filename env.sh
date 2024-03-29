#!/bin/bash

# Create variable PILSBOT_ROOT_DIR that will be used in other bash scripts
export PILSBOT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/"

# Source the ros specific things if the workspace already initialized
if [[ -f "${PILSBOT_ROOT_DIR}install/setup.bash" ]]; then
  source ${PILSBOT_ROOT_DIR}install/setup.bash
fi

export ROS_DOMAIN_ID=47
export RCUTILS_COLORIZED_OUTPUT=1
# Add the tools directory in order to use the pilsbot commands
export PATH=${PILSBOT_ROOT_DIR}tools/:$PATH

alias pb=pilsbot
