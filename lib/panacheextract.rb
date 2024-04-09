#!/usr/bin/ruby
=begin
Author Gaurav Sablok
Universitat Potsdam
Date: 2024-4-8
 a block comment iterator for the taf files using the hash iterator.
 for faster iterations, i implemented the alignment corrdinate as a key unique,
 so that it can be called easily. Instead of iterating through the lines, i stored
 the values in a hash and then implemented the hash search, so that it search for
 those specific hashes rather than going line by line.
=end

CLASS READTAF
=begin
       a class initator and use this with the input file
       to initiate the class for the file reading and then
       use the additional functions to make the taf file format
       conversions.
=end
   def inititalize(inputfile, outputfile, stringvalues, sequenceids)
    =begin
     stringvalues represent the column third of the MAF alignments
    =end
    @readfile = inputfile
    @outputfile = outfile
   end

def getspecific(ids, inputalignment, outalignmentfile)
  readiter = File.open(inputalignment, "r").readlines
  writefile = File.new(outalignmentfile, "w")
  for i in 0..readiter.length
    writefile.write(readiter[i]) if readiter[i].to_s.strip.split[0] == "s"
  end
  writefile.close
  readopen = File.open(outalignmentfile, "r").readlines
  idsequences = []
  idstrings = []
  for i in 0..readopen.length
   idsequences.push(readopen[i].to_s.strip.split[6])
   idstrings.push(readopen[i].to_s.strip.split[1])
  end
  select = []
  for i in 0..idstrings.length
    select.push([idstrings[i],idsequences[i]]) if idstrings[i] == ids
  end
  return(select)
end

def getspecific(ids, inputalignment, outalignmentfile, del = "None")
    if del == "None"
        readiter = File.open(inputalignment, "r").readlines
        writefile = File.new(outalignmentfile, "w")
        for i in 0..readiter.length
            writefile.write(readiter[i]) if readiter[i].to_s.strip.split[0] == "s"
        end
        writefile.close
        readopen = File.open(outalignmentfile, "r").readlines
        idsequences = []
        idstrings = []
        for i in 0..readopen.length
            idsequences.push(readopen[i].to_s.strip.split[6])
            idstrings.push(readopen[i].to_s.strip.split[1])
        end
        select = []
        for i in 0..idstrings.length
            select.push([idstrings[i],idsequences[i]]) if idstrings[i] == ids
        end
        return(select)
    end
    if del != "None"
        readiter = File.open(inputalignment, "r").readlines
        writefile = File.new(outalignmentfile, "w")
        for i in 0..readiter.length
            writefile.write(readiter[i]) if readiter[i].to_s.strip.split[0] == "s"
        end
        writefile.close
        readopen = File.open(outalignmentfile, "r").readlines
        idsequences = []
        idstrings = []
        for i in 0..readopen.length
            idsequences.push(readopen[i].to_s.strip.split[6])
            idstrings.push(readopen[i].to_s.strip.split[1])
        end
        select = []
        for i in 0..idstrings.length
            select.push([idstrings[i],idsequences[i]]) if idstrings[i] == ids
        end
        delselect = []
        select.each { | iter | delselect.push(iter) if iter[1].count("-") >= 1 }
        return(delselect)
    end
end
