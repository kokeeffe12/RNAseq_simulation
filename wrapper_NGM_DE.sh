#!/bin/bash
#NGM
#Paired-end mapping using x number of CPU threads for the candidate search

for i in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
do
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_01.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_01.00/simulated_genome/Socto_01.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO01_${i}_results.sam -t 4"
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_02.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_02.00/simulated_genome/Socto_02.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO02_${i}_results.sam -t 4"
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_03.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_03.00/simulated_genome/Socto_03.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO03_${i}_results.sam -t 4"
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_04.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_04.00/simulated_genome/Socto_04.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO04_${i}_results.sam -t 4"
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_05.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_05.00/simulated_genome/Socto_05.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO05_${i}_results.sam -t 4"
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_06.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_06.00/simulated_genome/Socto_06.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO06_${i}_results.sam -t 4"
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_07.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_07.00/simulated_genome/Socto_07.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO07_${i}_results.sam -t 4"
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_08.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_08.00/simulated_genome/Socto_08.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO08_${i}_results.sam -t 4"
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_09.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_09.00/simulated_genome/Socto_09.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO09_${i}_results.sam -t 4"
	bsub -x -n 12 -R "span[hosts=1]" -q whole_node -o DE_NGM_10.0${i}.err "./NextGenMap-0.4.12/bin/ngm-0.4.12/ngm -r ./sim_gen_SO_10.00/simulated_genome/Socto_10.00_transcripts.fa -1 ./DEreads/DEout${i}_1.fastq -2 ./DEreads/DEout${i}_1.fastq -o ./DE_NGM/76_PE_SO10_${i}_results.sam -t 4"o

done
