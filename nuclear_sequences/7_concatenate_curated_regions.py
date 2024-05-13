#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Python script to concatenate curated gene regions

import glob
from Bio import AlignIO
from collections import defaultdict
from Bio.Seq import Seq, UnknownSeq
from Bio.Align import MultipleSeqAlignment
from Bio.SeqRecord import SeqRecord
import pandas as pd

### concatenation function, source Kgori https://gist.github.com/kgori/f0532cff6500e839cb29

def concatenate(alignments):
    """
    Concatenates a list of Bio.Align.MultipleSeqAlignment objects.
    If any sequences are missing the are padded with unknown data
    (Bio.Seq.UnknownSeq).
    Returns a single Bio.Align.MultipleSeqAlignment.
    Limitations: any annotations in the sub-alignments are lost in
    the concatenated alignment.
    source https://gist.github.com/kgori/f0532cff6500e839cb29
    """
    # Get the full set of labels (i.e. sequence ids) for all the alignments
    all_labels = set(seq.id for aln in alignments for seq in aln)
    # Make a dictionary to store info as we go along
    # (defaultdict is convenient -- asking for a missing key gives back an empty list)
    tmp = defaultdict(list)
    # Assume all alignments have same alphabet
    alphabet = alignments[0]._alphabet
    for aln in alignments:
        length = aln.get_alignment_length()
        # check if any labels are missing in the current alignment
        these_labels = set(rec.id for rec in aln)
        missing = all_labels - these_labels
        # if any are missing, create unknown data of the right length,
        # stuff the string representation into the tmp dict
        for label in missing:
            new_seq = UnknownSeq(length, alphabet=alphabet)
            tmp[label].append(str(new_seq))
        # else stuff the string representation into the tmp dict
        for rec in aln:
            tmp[rec.id].append(str(rec.seq))
    # Stitch all the substrings together using join (most efficient way),
    # and build the Biopython data structures Seq, SeqRecord and MultipleSeqAlignment
    return MultipleSeqAlignment(SeqRecord(Seq(''.join(v), alphabet=alphabet), id=k)
                                for (k, v) in tmp.items())
###################### end of function


file_pattern = "_exon_intron.fasta.ts"
files = glob.glob('*'+file_pattern)
files.sort()

all_aligns = []

for file in files:
    print "reading " + file
    alignment = AlignIO.read(file, format="fasta")
    all_aligns.append(alignment)


## Concanate all the alignments and create an output file
supermatrix = concatenate(all_aligns)
for record in supermatrix:
	record.description = ""
supermatrix_name = "supermatrix.fasta"
output_handle = open(supermatrix_name, "w")
AlignIO.write(supermatrix,output_handle,"fasta")
output_handle.close()