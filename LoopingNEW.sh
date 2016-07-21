#!/bin/bash


for i in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
do
	python mix_fastqPE2.py ./76_PE_octo_filtered/flux_simulation/fluxSimulator.fastq ./76_PE_thal_filtered/flux_simulation/fluxSimulator.fastq ${i} 2000000 ./Sim_reads2/76_PE_out_filtered_SOAT${i}.fastq
done
