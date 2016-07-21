#!/bin/bash
#Nextgenmap
#Paired-end mapping using x number of CPU threads for the candidate search

for i in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
do
	./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r S_octo_transcripts.fa -1 ./Sim_reads/76_PE_outSOAT${i}_1.fasta -2 ./Sim_reads/76_PE_outSOAT${i}_2.fasta -o ./NGM/76_PE_${i}_results.sam -t 4
done
