for bam in /binf-isilon/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/*.bam; do
    n="${bam%%.*}"
    name="${n##*/}"
    rohan --rohmu 8e-4 -t 50 --auto /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/autosomes_rohan -o /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/analyses/rohan/rohan_revised_cr1_2/rohan_revised_cr1_2_$name /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/SusScrofa11_1.fasta $bam
done