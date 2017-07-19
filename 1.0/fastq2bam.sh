#/bin/bash

thread=$1
sample_lane=$2
sample_id=$3
genome=$4
r1=$5
r2=$6
bam=$7

bwa mem -t $thread -R "@RG\tID:$sample_lane\tSM:$sample_id\tPL:Illumina\tLB:Illumina\tPU:1" $genome $r1 $r2 | samtools view -bh -o "$bam" -@ 4  -
