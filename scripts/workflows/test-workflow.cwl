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
    type: File 
    outputSource: [kallisto/outputFiles]

steps:

  kallisto: 
    run: ../tools/kallisto/kallisto-quant.cwl
    in:
      index: index
      fastq1: TUMOR_FASTQ_1 
      fastq2: TUMOR_FASTQ_2
      outputDir: { default: "out" }
      bias: { default: true }
      bootstrap: { default: 30 }
      plaintext: { default: false }
      fusion: { default: false }
      single: { default: false }
      frstranded: { default: false }
      rfstranded: { default: false }
      threads: { default: 8 }
      pseudobam: { default: false }
      
    out: [outputFiles]
