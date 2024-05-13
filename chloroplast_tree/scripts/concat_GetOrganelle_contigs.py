import re,sys,os

#sys.argv[1] is the GetOrganelle assembly sys.argv[2] is the supercotig fasta label

contigs=0
concat_cp=""
with open(sys.argv[1],"r") as GO_cp:
	for line in GO_cp:
		if line[0]==">":
			contigs+=1
		else:
			concat_cp+=line.strip()

print ">"+sys.argv[2]
print concat_cp
