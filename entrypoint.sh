#!/bin/bash

set -e
export TEXMFHOME=${PWD}/.texmf

echo "Assuming texmf is in $TEXMFHOME";
if [[ -d $TEXMFHOME ]]; then
    echo "Found texmf"
    texhash $TEXMFHOME
fi

exec "$@"
