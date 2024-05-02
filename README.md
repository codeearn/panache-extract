# panache-extract
- a maf conversion for the panache for the genome visualization. 
- given a alignment in the maf and the taf format, you can extract the specific sequences for the snps with the pangenomes using specific ids and also the sequences as strings.
- it will also tell which snps variation is present so that it can be poulated on panache.
- added support for the output file write to each and every function of the gem
- This is now available as a ruby gem [panacheextract](https://rubygems.org/gems/panacheextract)
- ruby bindings to the django is also available.
- example MAF(602 bytes) [example MAF format](https://github.com/ComparativeGenomicsToolkit/taffy)
```
##maf version=1 scoring=N/A

a
s       simDog.chr6     437451  11      +       593897  CCCGTCAGTGT
s       simHuman.chr6   446327  11      +       601863  TCCGCCAAGGT
s       simMouse.chr6   460751  11      +       636262  TTCATCAGAGT
s       simRat.chr6     470339  11      +       647215  TTCATTAGGGT

a
s       simCow.chr6     445326  8       +       602619  TTTTCCCA
s       simDog.chr6     437462  8       +       593897  TT-TTCCG
s       simHuman.chr6   446338  8       +       601863  TTCTTCCG
s       simMouse.chr6   460762  8       +       636262  TTTTACCG
s       simRat.chr6     470355  8       +       647215  TTTTACCG
```
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
- search according to the sequence ids or according to the column values.
  ```
  # usage as above, added support for writing the output files to the disk for every function.
    getAll(ids, inputalignment, outalignment, del, writefilter)
  ```
  
Gaurav \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany
