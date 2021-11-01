#!/bin/bash

# clean up from last build
rm -r build dist >/dev/null 2>&1

# build binary package
python3 setup.py bdist_rpm --requires="python3-pyside2"

# return install instructions if build succeeds
if [[ $? -eq 0 ]]; then
    FILENAME=$(ls dist/*.noarch.rpm)
    echo ""
    echo "To install, run:"
    echo "sudo dnf install $FILENAME"
else
    echo ""
    echo "Qube Apps failed to build!"
fi