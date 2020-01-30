#!/bin/bash -l

### Check Readme 
if [ -s README.md ] ; then
    echo "README.md file exists and is non-empty"
    readme_check=true
else
    echo "README.md file either doesn't exists or is non-empty"
    readme_check=false
fi

### Check License
if [ -s LICENSE ] ; then
    echo "LICENSE file exists and is non-empty"
    license_check=true
else
    echo "LICENSE file either doesn't exists or is non-empty"
    license_check=false
fi


if [ $readme_check = false ] || [ $license_check = false ] ; then
    exit 1
fi

exit 0