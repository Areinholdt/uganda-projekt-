for bam in /binf-isilon/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/*.bam; do
    n="${bam%%.*}"
    name="${n##*/}"
    angsd -i "$bam" -anc /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/SusScrofa11_1.fasta -out ./"$name" -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -nThreads 50 -sites /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/subsample.regions -rf /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/autosomes.list
    /binf-isilon/hellergrp/rheller/software_scratch/angsd/misc/realSFS "$name".saf.idx >"$name".ml
    Rscript -e "a<-scan('$name.ml');a[2]/sum(a)" >"$name".het
done
awk '{print $0","FILENAME}' *.het > AllHet.list
