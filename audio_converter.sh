#!/bin/bash
#
# This script converts a audio file into .wav

INPUT_FILE=$1
BASE_DIR=$(dirname $INPUT_FILE)
BASE_NAME=$(basename -s .txt $INPUT_FILE)
TMP_FILE=$(mktemp --suffix=.wav) 
OUT_FILE=$(${BASE_DIR}/${BASE_NAME}.wav})
# creates a temporary file or directory
# only has the lifetime inside this script
echo "INPUT_FILE: ${INPUT_FILE}"
echo "BASE_NAME: ${BASE_NAME}"
echo "TMP_FILE: ${TMP_FILE}"
echo "OUT_FILE: ${OUT_FILE}"

# Extract the audio and assign it to the temporary file
avconv -y -i $INPUT_FILE $TMP_FILE

# sox converts file formats into something different
# converts and assigns the temporary file (with audio) into a .wav formatted file
sox $TMP_FILE -c 1 $OUT_FILE

echo "Converted successfully"