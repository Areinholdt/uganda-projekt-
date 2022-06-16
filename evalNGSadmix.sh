EVALADMIX=/isdata/hellergrp/rdc143/software/evalAdmix/evalAdmix

bgl=/isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/analyses/analyses_std/beagle_std.beagle.gz

outdir=/isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/analyses/analyses_std/ngsadmix/
resdir=/isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/analyses/analyses_std/ngsadmix/

for k in 2 3 4 5 6 7
do
    qfile=`find $resdir/$k | grep qopt_conv`
    ffile=`find $resdir/$k | grep fopt_conv`
    out=$outdir/evalNGSadmix_std.$k
    $EVALADMIX -beagle $bgl -qname $qfile -fname $ffile -P 10 -o $out.corres &> $out.log
done