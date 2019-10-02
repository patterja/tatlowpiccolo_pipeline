#!/usr/bin/env cwl-runner
#
# Authors: Allison Creason, John Letaw, Janice Patterson

class: Workflow
cwlVersion: v1.0

doc: "Kallisto Isoform quantification workflow for Paired-end"

requirements:
  - class: MultipleInputFeatureRequirement

inputs: 

  index: File

  TUMOR_FASTQ_1: File

  TUMOR_FASTQ_2: File

outputs:

  OUTPUT:
    type: 
      type: array
      items: File
    outputSource: [trim-galore/outputFiles]

steps:

  trim-galore:
    run: ../tools/trim_galore/trim-galore.cwl
    in:
      paired: { default: true }
      length: { default: 35 }
      fastq1: TUMOR_FASTQ_1
      fastq2: TUMOR_FASTQ_2

    out: [outputFiles]
