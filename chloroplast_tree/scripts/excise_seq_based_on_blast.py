import re, sys, os

if len(sys.argv) !=3:
	print "python excise.py blastresult cpAssembly"
	exit(1)

#import the chloroplast assembly and save it
assembly=""
with open(sys.argv[2],"r") as cp:
	for line in cp:
		if line[0]==">":
			label=line.strip()
		elif assembly=="":
			assembly=line.strip()

best_evalue=10000
with open(sys.argv[1],"r") as BLAST:
	for line in BLAST:#This will go though all the blast hits for a given region and cp and find the one with the best evalue to save for the second step
		print line

		hit=line.strip()
		splits=hit.split('\t')
		new_evalue=float(splits[14])
		
		print "new_evalue",new_evalue
		print "best_evalue",best_evalue
		print "Is better score",new_evalue<best_evalue

		if new_evalue<best_evalue:
			#Check if the sstart is going to be smaller than send
			sstart=int(splits[12])-1#Correcting sstart to be inclusive for forward regions
			send=int(splits[13])
			best_evalue=new_evalue
			
			#Cut a slice of the assembly that matches with the region you want to exsise
			if send>sstart:
				target=assembly[sstart:send]

			elif sstart>send:
				target=assembly[send-1:sstart+1]



#Determining the output file name
arg1=sys.argv[1]
x=re.findall("_GO_CP[\S]+\.supercontig\.fa",arg1)[0]
outname=arg1.replace(x,"").replace(".blastresult",".sequence.fa")
with open(outname,"a+") as out:
	out.write(">"+sys.argv[1]+"\n")
	out.write(target+"\n")

