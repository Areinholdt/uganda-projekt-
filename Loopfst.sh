for country in ghana kenya namibia tanzania uganda ugandaweird zambia zimbabwe
do
	for country2 in ghana kenya namibia tanzania uganda ugandaweird zambia zimbabwe
	do
		if [ $country != $country2 ] && [ ! -f "$country2.$country.fst.idx" ]; then
		/binf-isilon/hellergrp/rheller/software_scratch/angsd/misc/realSFS fst index $country.saf.idx $country2.saf.idx -sfs $country.$country2.ml -fstout $country.$country2
		fi 
	done
done
