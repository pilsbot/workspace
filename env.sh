#!/bin/bash

# Create variable to use for other bash scripts
export PILSBOT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/"

# Source the ros specific things if the workspace already initialized
if [[ -f "${PILSBOT_ROOT_DIR}devel/setup.bash" ]]; then
  source ${PILSBOT_ROOT_DIR}devel/setup.bash
fi

# Add the tools directory in order to use the pilsbot commands
export PATH=${PILSBOT_ROOT_DIR}tools/:$PATH
