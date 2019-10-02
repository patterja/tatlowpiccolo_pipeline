#!/bin/bash
#
# Authors: Allison Creason, John Letaw, Janice Patterson


# This script is meant to function within the BioCoders environment.
BIOCODERS="/home/exacloud/lustre1/BioCoders"
source $BIOCODERS/USE_APPS --python3
export PATH="$PATH:$BIOCODERS/Applications/anaconda2/bin"
source activate cwltool

# Create these before running the script.
PROJ=${PROJ}
RAW="${PROJ}/raw"
LOGS="${PROJ}/logs"
OUTPUT="${PROJ}/output"
SCRIPTS="${PROJ}/scripts"

# Inputs
#INDEX="/home/exacloud/lustre1/BioCoders/DataResources/Transcriptomes/Human/grch37_75/kallisto_index/GRCh37.75.idx"
INDEX="/home/exacloud/lustre1/BioCoders/DataResources/Transcriptomes/Human/gencode_release24/kallisto_index/gencodev24_kallistoindex"
WORKFLOW="${SCRIPTS}/workflows/kallisto-quant-paired-workflow.cwl"
#WORKFLOW="${SCRIPTS}/workflows/test-trimgalore-workflow.cwl"
