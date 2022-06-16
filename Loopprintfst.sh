for country in ghana kenya namibia tanzania uganda ugandaweird zambia zimbabwe
do
	for country2 in ghana kenya namibia tanzania uganda ugandaweird zambia zimbabwe
	do
		if [ $country != $country2 ] && [ ! -f "$country2.$country.fst.idx" ]; then
    echo "$country $country2" >> fst.list
		/binf-isilon/hellergrp/rheller/software_scratch/angsd/misc/realSFS fst stats $country.$country2.fst.idx >> fst.list
		fi 
	done
done
