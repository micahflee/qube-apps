#!/bin/bash

# clean up from last build
rm -r deb_dist >/dev/null 2>&1

# build binary package
python3 setup.py --command-packages=stdeb.command bdist_deb

# return install instructions if build succeeds
if [[ $? -eq 0 ]]; then
    FILENAME=$(ls deb_dist/*.deb)
    echo ""
    echo "To install, run:"
    echo "sudo apt install $FILENAME"
else
    echo ""
    echo "Qube Apps failed to build!"
fi
