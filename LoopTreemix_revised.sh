for r in {57..100}
do
mkdir treemix_revised_run_$r
for i in {0..9}
do
/isdata/hellergrp/nzg134/programs/anaconda3/envs/treemix/bin/treemix -i treemixinput_revised.gz -o ./treemix_revised_run_$r/treemix_revised_run_$r.edge_$i -m $i -bootstrap -k 500 -root SusScrofa
cat ./treemix_revised_run_$r/treemix_revised_run_$r.edge_$i.llik >> loglik_treemix_edges_$i.list
done
done
