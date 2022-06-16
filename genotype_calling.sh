REF='/isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/SusScrofa11_1.fasta'

cat geno_bam.list | while read -r SAMPLE
do

bcftools mpileup -R /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/autosome_rep_het_dep_map.regions -Q 30 -q 30 --threads 1 -O u --fasta-ref $REF --per-sample-mF -a FORMAT/AD,FORMAT/ADF,FORMAT/ADR,FORMAT/DP,FORMAT/SP,INFO/AD,INFO/ADF,INFO/ADR /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/$SAMPLE.bam | bcftools call -Oz -o ${SAMPLE}.vcf.gz --threads 1 --multiallelic-caller

bcftools sort ${SAMPLE}.vcf.gz > ${SAMPLE}_sorted.vcf.gz

bcftools index ${SAMPLE}.vcf.gz
done
