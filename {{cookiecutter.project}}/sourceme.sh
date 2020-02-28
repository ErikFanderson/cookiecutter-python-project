#!/usr/bin/env bash

# Set PYTHONPATH accordingly
if [ -z "$PYTHONPATH" ]
then
    export PYTHONPATH=$PWD
else
    export PYTHONPATH=$PWD:$PYTHONPATH
fi

# Set MYPYPATH accordingly
if [ -z "$MYPYPATH" ]
then
    export MYPYPATH=$PWD/{{cookiecutter.project}}
else
    export MYPYPATH=$PWD/{{cookiecutter.project}}:$MYPYPATH
fi

# Set {{cookiecutter.project.upper()}}_HOME variable
export {{cookiecutter.project.upper()}}_HOME=$PWD
