#!/bin/bash
#Tophat
#Paired-end mapping using x number of CPU threads for the candidate search

for i in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
do
	bsub -q day -M 8 -o test_150_${i}.err "tophat --GTF ./Schizosaccharomyces_octosporus.GCA_000150505.2.31.gtf --num-threads 1 --output-dir ./Tophat/150_PE_tophat_${i} ./Reference_Genomes/SO2 ./Sim_reads/150_PE_outSOAT${i}_1.fasta ./Sim_reads/150_PE_outSOAT${i}_2.fasta"
done

for i in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
do
	bsub -q day -M 8 -p test_76_${i}.err "tophat --GTF ./Schizosaccharomyces_octosporus.GCA_000150505.2.31.gtf --num-threads 1 --output-dir ./Tophat/76_PE_tophat_${i} ./Reference_Genomes/SO2 ./Sim_reads/76_PE_outSOAT${i}_1.fasta ./Sim_reads/76_PE_outSOAT${i}_2.fasta"
done
