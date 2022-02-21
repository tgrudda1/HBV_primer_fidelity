#### grab the full length HBV sequences from the Bell paper ####
'wget' http://hvdr.bioinf.wits.ac.za/alignments/20170626/GenotypeA_FL.zip;
'wget' http://hvdr.bioinf.wits.ac.za/alignments/20170626/GenotypeB_FL.zip;
'wget' http://hvdr.bioinf.wits.ac.za/alignments/20170626/GenotypeC_FL.zip;
'wget' http://hvdr.bioinf.wits.ac.za/alignments/20170626/GenotypeD_FL.zip;
'wget' http://hvdr.bioinf.wits.ac.za/alignments/20170626/GenotypeE_FL.zip;
'wget' http://hvdr.bioinf.wits.ac.za/alignments/20170626/GenotypeF_FL.zip;
'wget' http://hvdr.bioinf.wits.ac.za/alignments/20170626/GenotypeG_FL.zip;
'wget' http://hvdr.bioinf.wits.ac.za/alignments/20170626/GenotypeH_FL.zip;
'wget' http://hvdr.bioinf.wits.ac.za/alignments/20170626/GenotypeI_FL.zip;

#### unzip fastas and make blast databases ####
gunzip -c GenotypeA_FL.zip | makeblastdb -in - -out GenAdb -dbtype nucl -title GenAdb -parse_seqids
gunzip -c GenotypeB_FL.zip | makeblastdb -in - -out GenBdb -dbtype nucl -title GenAdb -parse_seqids
gunzip -c GenotypeC_FL.zip | makeblastdb -in - -out GenCdb -dbtype nucl -title GenAdb -parse_seqids
gunzip -c GenotypeD_FL.zip | makeblastdb -in - -out GenDdb -dbtype nucl -title GenAdb -parse_seqids
gunzip -c GenotypeE_FL.zip | makeblastdb -in - -out GenEdb -dbtype nucl -title GenAdb -parse_seqids
gunzip -c GenotypeF_FL.zip | makeblastdb -in - -out GenFdb -dbtype nucl -title GenAdb -parse_seqids
gunzip -c GenotypeG_FL.zip | makeblastdb -in - -out GenGdb -dbtype nucl -title GenAdb -parse_seqids
gunzip -c GenotypeH_FL.zip | makeblastdb -in - -out GenHdb -dbtype nucl -title GenAdb -parse_seqids
gunzip -c GenotypeI_FL.zip | makeblastdb -in - -out GenIdb -dbtype nucl -title GenAdb -parse_seqids

#### align primers to blast databases ####

blastn -task blastn-short -db GenAdb -query Primers.fa -penalty -3 -outfmt "10 qseqid sseqid evalue nident mismatch positive ppos" -out PrimersA.txt -max_target_seqs 10000;
blastn -task blastn-short -db GenBdb -query Primers.fa -penalty -3 -outfmt "10 qseqid sseqid evalue nident mismatch positive ppos" -out PrimersB.txt -max_target_seqs 10000;
blastn -task blastn-short -db GenCdb -query Primers.fa -penalty -3 -outfmt "10 qseqid sseqid evalue nident mismatch positive ppos" -out PrimersC.txt -max_target_seqs 10000;
blastn -task blastn-short -db GenDdb -query Primers.fa -penalty -3 -outfmt "10 qseqid sseqid evalue nident mismatch positive ppos" -out PrimersD.txt  -max_target_seqs 10000;
blastn -task blastn-short -db GenEdb -query Primers.fa -penalty -3 -outfmt "10 qseqid sseqid evalue nident mismatch positive ppos" -out PrimersE.txt  -max_target_seqs 10000;
blastn -task blastn-short -db GenFdb -query Primers.fa -penalty -3 -outfmt "10 qseqid sseqid evalue nident mismatch positive ppos" -out PrimersF.txt  -max_target_seqs 10000;
blastn -task blastn-short -db GenGdb -query Primers.fa -penalty -3 -outfmt "10 qseqid sseqid evalue nident mismatch positive ppos" -out PrimersG.txt -max_target_seqs 10000;
blastn -task blastn-short -db GenHdb -query Primers.fa -penalty -3 -outfmt "10 qseqid sseqid evalue nident mismatch positive ppos" -out PrimersH.txt  -max_target_seqs 10000;
blastn -task blastn-short -db GenIdb -query Primers.fa -penalty -3 -outfmt "10 qseqid sseqid evalue nident mismatch positive ppos" -out PrimersI.txt -max_target_seqs 10000;
