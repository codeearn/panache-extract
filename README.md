# maf-panache
a maf taf conversion for the panache for the genome visualization. given a alignment in the maf and the taf format, you can extract the specific sequences for the snps with the pangenomes using specific ids and also the sequences as strings. it will also tell which snps variation is present so that it can be poulated on panache.This is now available as a ruby gem [panacheextract](https://rubygems.org/gems/panacheextract) 

- extracts specific sequences from the pangenome graph
  ```
  getspecific("simDog.chr6","/home/gaurav/Desktop/maf_taf_panache/sample.taf",
                                    "/home/gaurav/Desktop/maf_taf_panache/sample.txt"
  ```
- extract specific sequences from the alignments associated with the specific deletions
  ```
  # will only give the sequences of those which have deletions in the graphs. 
   getspecific("simDog.chr6", "/home/gaurav/Desktop/maf_taf_panache/sample.taf",
                        "/home/gaurav/Desktop/maf_taf_panache/sample.txt", del = "None")
        [["simDog.chr6", "CCCGTCAGTGT"], ["simDog.chr6", "TT-TTCCG"]]
   getspecific("simDog.chr6", "/home/gaurav/Desktop/maf_taf_panache/sample.taf",
                       "/home/gaurav/Desktop/maf_taf_panache/sample.txt", del != "None")
          [["simDog.chr6", "TT-TTCCG"]]
  
- extract the position of deletion snps from the alignments. will only report the coordinates of those ids if they have deletions.
  ```
  delcoordinates("simDog.chr6", "/home/gaurav/Desktop/maf_taf_panache/sample.taf",
                                         "/home/gaurav/Desktop/maf_taf_panache/sample.txt")
  ```
  
- search according to the sequence ids or according to the column values.  **adding this to the gem**
- a ruby on rails plus a streamlit application for the visualization of the extracted snps breakpoints. **adding the ruby bindings to the djnago panache application**

Gaurav Sablok \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany
