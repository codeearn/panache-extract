# maf-taf-panache
a maf taf conversion for the panache for the genome visualization. given a alignment in the maf and the taf format, you can extract the specific sequences for the snps with the pangenomes using specific ids and also the sequences as strings. it will also tell which snps variation is present so that it can be poulated on panache.

- extracts specific sequences from the pangenome graph
  ```
  getspecific("simDog.chr6","/home/gaurav/Desktop/maf_taf_panache/sample.taf",
                                    "/home/gaurav/Desktop/maf_taf_panache/sample.txt"
  ```
- extract specific sequences from the alignments. **evening release final code check**
- extract the position of those snps from the alignments. **evening release final code check**
- search according to the sequence ids or according to the column values.  **evening release final code check**
- a ruby on rails plus a streamlit application for the visualization of the extracted snps breakpoints.

Gaurav Sablok \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany
