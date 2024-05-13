for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.ccsA‐ndhD_REGION.sequence.fa >> ccsA‐ndhD.partition.fasta; done
for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.petD‐rpoA_REGION.sequence.fa >> petD‐rpoA.partition.fasta; done
for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.psbM-trnD_REGION.sequence.fa >> psbM-trnD.partition.fasta; done
for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.psbZ‐trnfM_REGION.sequence.fa >> psbZ‐trnfM.partition.fasta; done
for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.rpl16‐rps3_REGION.sequence.fa >>rpl16‐rps3.partition.fasta; done
for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.trnE‐trnT_REGION.sequence.fa >> trnE‐trnT.partition.fasta; done
for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.trnG‐psaB_REGION.sequence.fa >> trnG‐psaB.partition.fasta; done
for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.trnT‐psbD_REGION.sequence.fa >> trnT‐psbD.partition.fasta; done
for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.ycf1_1_REGION.sequence.fa >> ycf1_1.partition.fasta; done
for i in $(cat ../List_of_accessions.txt); do echo $i; cat *$i*.ycf1_2_REGION.sequence.fa >> ycf1_2.partition.fasta; done
