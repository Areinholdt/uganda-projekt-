for country in ghana kenya namibia tanzania uganda zambia zimbabwe desert SusScrofa
do
angsd -b ./bamlists/$country.list  -anc /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/SusScrofa11_1.fasta -out $country -dosaf 1 -gl 2 -minQ 20 -minMapQ 30 -nThreads 10 -sites /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/subsample.regions -rf /isdata/hellergrp/rheller/warthog/bamFiles_ugandaWarthogProj/autosomes.list
done
