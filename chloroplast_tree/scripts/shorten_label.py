import re,sys

with open(sys.argv[1],"r") as fil:
	for line in fil:
		if line[0]==">":
			newLab=re.findall("[^_]+",line)[0]
			print newLab
		else:
			print line.strip()
