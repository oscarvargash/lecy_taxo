for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.ccsA‐ndhD_REGION.blastresult $i; done

for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.petD‐rpoA_REGION.blastresult $i; done

for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.psbM-trnD_REGION.blastresult $i; done

for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.psbZ‐trnfM_REGION.blastresult $i; done

for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.rpl16‐rps3_REGION.blastresult $i; done

for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.trnE‐trnT_REGION.blastresult $i; done

for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.trnG‐psaB_REGION.blastresult $i; done

for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.trnT‐psbD_REGION.blastresult $i; done

for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.ycf1_1_REGION.blastresult $i; done

for i in *.supercontig.fa; do python ../excise_seq_based_on_blast.py $i.ycf1_2_REGION.blastresult $i; done
