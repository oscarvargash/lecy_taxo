ls *.supercontig.fa > all_cps_to_blast.txt; 

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query ycf1_2_REGION.fa  -evalue 0.001 -max_target_seqs 1 -out $i.ycf1_2_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query ycf1_1_REGION.fa  -evalue 0.001 -max_target_seqs 1 -out $i.ycf1_1_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query ccsA‐ndhD_REGION.fa -evalue 0.001 -max_target_seqs 1 -out $i.ccsA‐ndhD_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query petD‐rpoA_REGION.fa -evalue 0.001 -max_target_seqs 1 -out $i.petD‐rpoA_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query psbM-trnD_REGION.fa -evalue 0.001 -max_target_seqs 1 -out $i.psbM-trnD_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query psbZ‐trnfM_REGION.fa -evalue 0.001 -max_target_seqs 1 -out $i.psbZ‐trnfM_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query rpl16‐rps3_REGION.fa  -evalue 0.001 -max_target_seqs 1 -out $i.rpl16‐rps3_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query trnE‐trnT_REGION.fa  -evalue 0.001 -max_target_seqs 1 -out $i.trnE‐trnT_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query trnG‐psaB_REGION.fa  -evalue 0.001 -max_target_seqs 1 -out $i.trnG‐psaB_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done

for i in $(cat all_cps_to_blast.txt); do echo $i; blastn -db $i -query  trnT‐psbD_REGION.fa  -evalue 0.001 -max_target_seqs 1 -out $i.trnT‐psbD_REGION.blastresult -outfmt '6 qseqid qlen sseqid slen frames pident nident length mismatch gapopen qstart qend sstart send evalue bitscoreD'; done
