cd /binf-isilon/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/analyses/analyses_std_sub/fst/
for country in ghana kenya namibia tanzania uganda ugandaweird zambia zimbabwe
do
  /binf-isilon/hellergrp/rheller/software_scratch/angsd/misc/realSFS $country.saf.idx -P 10 > /binf-isilon/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/analyses/stairway/$country.sfs
done
