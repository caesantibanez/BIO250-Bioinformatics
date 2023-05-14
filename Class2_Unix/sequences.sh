#!/bin/sh
curl -fsSL https://www.dropbox.com/s/ui25zb3w9bkyluu/Amauritanicus_trinity.Trinity.fasta.transdecoder.pep 
mv Amauritanicus_trinity.Trinity.fasta.transdecoder.pep Amauritanicus.aminoacids.fasta
mkdir Nucleotides
mkdir Proteins
mv Amauritanicus.aminoacids.fasta Proteins
mv Amauritanicus.Trinity.fasta Nucleotides
grep -r -c '>' Proteins/Amauritanicus.aminoacids.fasta > mysequences.txt
grep -r -c '>' Nucleotides/Amauritanicus.Trinity.fasta >> mysequences.txt

