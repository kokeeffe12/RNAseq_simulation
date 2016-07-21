#!/bin/bash
#Tophat
#Paired-end mapping using x number of CPU threads for the candidate search


for i in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
do
    	bsub -q week -o test_tophat76_SO_${i}.err "tophat --GTF ./Schizosaccharomyces_octosporus.GCA_000150505.2.31.gtf --output-dir ./Tophat_sim_DE/76_PE_filtered_tophat_${i} ./Reference_Genomes/SO2 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
    #	bsub -q week -o test_tophat76_SC_${i}.err "tophat --GTF ./Reference_Genomes/Schizosaccharomyces_cryophilus.GCA_000004155.2.31.gtf --output-dir ./Tophat_sim_DE/76_PE_filtered_SC_${i} ./Reference_Genomes/SC ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq" 
    #	bsub -q week -o test_tophat76_SJ_${i}.err "tophat --GTF ./Reference_Genomes/Schizosaccharomyces_japonicus.GCA_000149845.2.31.gtf --output-dir ./Tophat_sim_DE/76_PE_filtered_SJ_${i} ./Reference_Genomes/SJ ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO01_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_01.00/simulated_genome/Socto_01.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_01.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_01.00/simulated_genome/SO01 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO02_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_02.00/simulated_genome/Socto_02.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_02.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_02.00/simulated_genome/SO02 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO03_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_03.00/simulated_genome/Socto_03.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_03.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_03.00/simulated_genome/SO03 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO04_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_04.00/simulated_genome/Socto_04.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_04.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_04.00/simulated_genome/SO04 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO05_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_05.00/simulated_genome/Socto_05.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_05.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_05.00/simulated_genome/SO05 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO06_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_06.00/simulated_genome/Socto_06.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_06.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_06.00/simulated_genome/SO06 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO07_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_07.00/simulated_genome/Socto_07.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_07.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_07.00/simulated_genome/SO07 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO08_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_08.00/simulated_genome/Socto_08.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_08.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_08.00/simulated_genome/SO08 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO09_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_09.00/simulated_genome/Socto_09.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_09.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_09.00/simulated_genome/SO09 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
#	bsub -q week -o test_tophat76_SO10_${i}.err "tophat --GTF /netscr/kokeeffe/Sim_update/sim_gen_SO_10.00/simulated_genome/Socto_10.00.gtf --output-dir ./Tophat_sim_DE/76_PE_Socto_10.00_${i} /netscr/kokeeffe/Sim_update/sim_gen_SO_10.00/simulated_genome/SO10 ./DEreads/DEout${i}_1.fastq ./DEreads/DEout${i}_2.fastq"
done
