#!/bin/bash
#
# This script organizes the img names
IMAGES=$(ls *png)
COUNT=1
for IMAGE in $IMAGES
do
    echo "Renaming the file from $IMAGE to photo${COUNT}"
    mv ${IMAGE} "photo-${COUNT}.png"
    COUNT += 1
done