#!/bin/bash
#BWA
#Paired-end mapping using x number of CPU threads for the candidate search

for i in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
do
#        bsub -q day -o bwa_150_${i}.err "bwa mem ./bwa_transcriptome/S_octo_transcripts.fa ./Sim_reads2/150_PE_outSOAT${i}_1.fastq ./Sim_reads2/150_PE_outSOAT${i}_2.fastq > ./bwa_transcriptome2/BWA_150_${i}_output.sam"
        bsub -q day -o bwa_76__filtered_${i}.err "bwa mem ./bwa_transcriptome/S_octo_transcripts.fa ./Sim_reads2/76_PE_filteredSOAT${i}_1.fasta ./Sim_reads2/76_PE_filteredSOAT${i}_2.fasta > ./bwa_transcriptome2/BWA_76_filtered_${i}_output.sam"		
done

