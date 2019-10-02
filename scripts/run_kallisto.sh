#!/bin/bash
#
# Authors: Allison Creason, John Letaw, Janice Patterson
PROJ=$1
SAMPLE=$2
echo $SAMPLE
echo $INDEX
echo $OUTPUT/$SAMPLE
INPUT="input.json"

# Set up env vars
source ${PROJ}/scripts/kallisto_source.sh

# Generate input json file
if [ ! -e $OUTPUT/$SAMPLE ]; then
    mkdir -p $OUTPUT/$SAMPLE
fi

$SCRIPTS/generate_job.py $SAMPLE $INDEX $RAW > $OUTPUT/$SAMPLE/$INPUT

# Run cwl workflow
cwltool --tmp-outdir-prefix /mnt/scratch/ --outdir $OUTPUT/$SAMPLE --rm-container --rm-tmpdir $WORKFLOW $OUTPUT/$SAMPLE/$INPUT 
