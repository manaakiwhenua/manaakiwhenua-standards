#!/bin/bash -l

declare -a passed_messages=()
declare -a failed_messages=()
CHECK_SIZE=2

### Check Readme 
if [ -s README.md ] ; then
    passed_messages+=("README.md file exists and is non-empty")
    readme_check=true
else
    failed_messages+=("README.md file either doesn't exist or is empty")
    readme_check=false
fi

### Check License
if [ -s LICENSE ] || [ -s LICENSE.txt ] || [ -s LICENSE.md ] ; then
    passed_messages+=("LICENSE file exists and is non-empty")
    license_check=true
elif [ -s COPYING ] && [ -s COPYING.LESSER ] ; then
    passed_messages+=("COPYING and COPYING.LESSER files exist and are non-empty (GNU LGPL)")
    license_check=true
else
    failed_messages+=("LICENSE file either doesn't exist or is empty")
    license_check=false
fi

echo "== Passed Checks ${#passed_messages[@]} / ${CHECK_SIZE} =="
for i in "${passed_messages[@]}" ; do
  echo " * ${i}"
done

echo ""
echo "== Failed Checks ${#failed_messages[@]} / ${CHECK_SIZE} =="
for i in "${failed_messages[@]}" ; do
  echo " * ${i}"
done


if [ $readme_check = false ] || [ $license_check = false ] ; then
    exit 1
fi

exit 0
