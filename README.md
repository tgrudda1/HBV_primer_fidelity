# HBV_primer_fidelity
## Introduction
This is a rudimentary code to blast your HBV primers against 4,000+ full length HBV sequences, genotypes A-I, testing for pangenotypicity.
Sequences are pulled from http://hvdr.bioinf.wits.ac.za/alignments/. Please cite Bell et al. (DOI: 10.1186/s40064-016-3312-0) if using this for           publication.
## Requirements
Linux (I used a Ubuntu Desktop for this, but you can modify it for use fairly easily):
NCBI Blast can be installed `sudo apt-get install ncbi-blast+`

RStudio:
https://www.rstudio.com/products/rstudio/download/#download
Within R, you'll just need 'tidyverse' for this: `install.packages('tidyverse')`

## Process
Make a new folder for your
- PrimerBlast.sh
- Primers.fa (be sure your primers are labelled and in FASTA format)

In your terminal, navigate to your new folder and run the shell 

`sh PrimerBlast.sh`

This will align your primers to each genotype and export these to a .txt file.

Your done with the command line now and can move to RStudio.

Set your working directory to the original file you created which also contains your new genotype-specific alignments.
Open the "Primer Alignments.Rmd" notebook and run the chunk by hitting the "play" button at the top right of the highlighted chunk.

## Output
In the "a2i.match" dataframe, columns are the following:
- primer
- GENOTYPE
- gen.len -the number of full length sequences you blasted against
- perf.count -the number of sequences your primer aligned to with zero mismatches
- offby1.count -the number of sequences your primer aligned to with up to 1 mismatch
- perf.perc -the percentage of sequences your primer aligned to with zero mismatches
- offby1.perc -the percentage of sequnces your primer aligned to with up to 1 mismatch


This is the relevant data you need to check how pangenotypic your primer sets will be. Once you're in R you can play around with visual representations of your data, but this is all you need to get started.

