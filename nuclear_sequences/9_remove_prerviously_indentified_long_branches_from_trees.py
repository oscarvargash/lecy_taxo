#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Phython script that will INGROUP tips with long branches
previously identified by treesrhink from a tree with only ingroup taxa
from trees with outgroup taxa
execute on parent forder of shrinked_trees_fastas_01
"""

import glob
import os, sys
import subprocess
import shutil

# get cluster names from trees retained after removing
# the to 90 percentile trees because of extreme variability

os.chdir("shrinked_trees_fastas_01")

files_with_outliers = glob.glob("*" + "0.10.txt")
clusters_retained = map(lambda each:each.split('.')[0], files_with_outliers)

print "creating a dictionary for each cluster with outlier taxa"

outlier_taxa = dict()

for file in files_with_outliers:
    outliers_in_file = []
    cluster = file.split('.')[0]
    with open(file) as infile:
        for line in infile:
            outliers_in_line = line.split("\t")[:-1]
            outliers_in_file = outliers_in_file + outliers_in_line
            #print cluster
            #print outliers_in_line
    outlier_taxa[cluster] = outliers_in_file
    outlier_taxa["cluster11265"] = []

os.chdir("../")

print "the gardener, phyx, is now pruning all trees"

for item in outlier_taxa:
    treefile = item + ".treefile"
    outtreefile = treefile + ".ts"
    if len(outlier_taxa[item]) != 0:
        outliers = str(",".join(outlier_taxa[item]))
        cmd = ['pxrmt -t', treefile, '-n', outliers, '-o', outtreefile]
        cmd = " ".join(cmd)
        print "executing: " + cmd
        process = subprocess.Popen(cmd.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
    else:
        print item + " has not outlier tips in ingroup"
        os.system("cp " + treefile + " " + outtreefile)
    shutil.move(outtreefile, "./shrinked_trees_fastas_01/")


print "concatenating all tree files in one single file for ASTRAL"

os.chdir("shrinked_trees_fastas_01")
os.system("cat *.treefile.ts > alltrees.ts")

print "done (っ▀¯▀)つ"
