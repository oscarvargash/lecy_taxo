for file in *.fasta; do mafft --thread 30 --localpair --maxiterate 1000 $file > $file.mafft; done
