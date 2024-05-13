import re,sys

with open(sys.argv[1],"r") as fasta:
	for line in fasta:
		if line[0]==">":
			label=line
		elif len(line.strip())!=0:
			print label.strip()
			print line.strip()
