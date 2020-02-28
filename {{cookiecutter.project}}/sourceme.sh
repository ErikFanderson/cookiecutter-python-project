#!/usr/bin/env bash 

# Set PYTHONPATH accordingly
if [ -z "$PYTHONPATH" ]
then
    export PYTHONPATH=$PWD
else
    export PYTHONPATH=$PWD:$PYTHONPATH
fi

# Set {{cookiecutter.project.upper()}}_HOME variable
export {{cookiecutter.project.upper()}}_HOME=$PWD
