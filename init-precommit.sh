#!/bin/sh

# Install necessary brew packages
if ! brew ls --versions pre-commit > /dev/null;
then
    brew install pre-commit
fi

# Initialize pre-commit hooks
pre-commit install
