import sys,os,re

reads_to_do={}

#Reading in the file from RAPiD Genomics and creating a list of all capture reads to process
with open("MCH_132501_SampleSheet.csv","r") as table:
	for line in table:
		splits=line.strip().split(",")
		if splits[6]=="capture":	
			reads_to_do[splits[1]]=splits[4]
		else:
			pass
			
#Calling bash to run seqyclean for each pair of reads
print "Beginning to run seqyclean on "+str(len(reads_to_do.keys()))+" targeted capture reads"
for i in reads_to_do:
	print "Processing",i
	paired_read=reads_to_do[i].replace("R1_001.fastq.gz","R2_001.fastq.gz")
	
	bash_command="seqyclean-master/bin/seqyclean -qual 20 20 -minlen 25 -polyat -t 20 -c Illumina_contaminants.fa -1 capture/"+str(reads_to_do[i])+" -2 capture/"+str(paired_read)+" -o unassembled_reads_seqycleaned/"+str(i)
	
	print bash_command,"\n\n"	
	os.system(bash_command)
