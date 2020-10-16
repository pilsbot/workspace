#!/bin/bash

echo "Bootstraping Pilsbot workspace"

# Get directory of this bootstrap file
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

# Create directory that will store the git repositories
mkdir -p src/
cd src/

# Function to read a package element from manifest.xml
read_packages () {
    local IFS=\>
    read -d \< ENTITY CONTENT
    local RET=$?
    TAG_NAME=${ENTITY%% *}
    ATTRIBUTES=${ENTITY%/}
    return $RET
}

# For each package in manifest, clone the repository
clone_packages () {
    if [[ $TAG_NAME = "package" ]] ; then
        eval local $ATTRIBUTES
        echo "git clone $url -b $branch $name"
        git clone $url -b $branch $name
        cd $name && git submodule update --init --recursive && cd ..
    elif [[ $TAG_NAME = "env" ]] ; then
        eval local $ATTRIBUTES
        echo "source $path"
        source $path
    fi
}

while read_packages; do
    clone_packages
done < "$DIR/manifest.xml"

echo "Build project..."

# come back to main workspace directory
cd $DIR

catkin build
