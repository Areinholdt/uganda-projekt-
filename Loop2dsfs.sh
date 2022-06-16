for country in ghana kenya namibia tanzania uganda ugandaweird zambia zimbabwe
do
	for country2 in ghana kenya namibia tanzania uganda ugandaweird zambia zimbabwe
	do
		if [ $country != $country2 ] && [ ! -f "$country2.$country.ml" ]; then
		/binf-isilon/hellergrp/rheller/software_scratch/angsd/misc/realSFS $country.saf.idx $country2.saf.idx > $country.$country2.ml
		#touch $country.$country2.ml #for testing combinations
		fi 
	done
done
