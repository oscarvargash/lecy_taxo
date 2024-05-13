for prefix in $(ls AT1G?????_exon_intron.fasta | sed -e "s/\_.*$//"); do raxml -T 7 -f a -x 12345 -# 200 -p 12345 -m GTRCAT -s $prefix'_exon_intron.fasta' -q $prefix'_exon_intron.model' -n $prefix; done
command; echo "genes 1" | mail -s "Process done" oscarvargash@gmail.com

for prefix in $(ls AT2G?????_exon_intron.fasta | sed -e "s/\_.*$//"); do raxml -T 7 -f a -x 12345 -# 200 -p 12345 -m GTRCAT -s $prefix'_exon_intron.fasta' -q $prefix'_exon_intron.model' -n $prefix; done
for prefix in $(ls AT4G?????_exon_intron.fasta | sed -e "s/\_.*$//"); do raxml -T 7 -f a -x 12345 -# 200 -p 12345 -m GTRCAT -s $prefix'_exon_intron.fasta' -q $prefix'_exon_intron.model' -n $prefix; done
command; echo "genes 2 4" | mail -s "Process done" oscarvargash@gmail.com

for prefix in $(ls AT3G?????_exon_intron.fasta | sed -e "s/\_.*$//"); do raxml -T 7 -f a -x 12345 -# 200 -p 12345 -m GTRCAT -s $prefix'_exon_intron.fasta' -q $prefix'_exon_intron.model' -n $prefix; done
command; echo "genes 3" | mail -s "Process done" oscarvargash@gmail.com


for prefix in $(ls AT5G?????_exon_intron.fasta | sed -e "s/\_.*$//"); do raxml -T 7 -f a -x 12345 -# 200 -p 12345 -m GTRCAT -s $prefix'_exon_intron.fasta' -q $prefix'_exon_intron.model' -n $prefix; done
command; echo "genes 5" | mail -s "Process done" oscarvargash@gmail.com

