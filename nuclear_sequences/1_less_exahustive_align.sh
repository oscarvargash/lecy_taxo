for file in *.fasta; do mafft --thread 30 --retree 2 --maxiterate 1000 $file > $file.mafft; done
