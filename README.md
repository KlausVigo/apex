[![Travis-CI Build Status](https://travis-ci.org/thibautjombart/apex.png?branch=master)](https://travis-ci.org/thibautjombart/apex)

#apex
Extension of the R package ape for multiple genes.

Installing *apex*
-------------
To install the development version from github: 
```r
library(devtools)
install_github("thibautjombart/apex")
```

Functionalities
----------------

#### Classes of object

See the classes:
* **multidna:** formal (S4) class, storing data using a list of DNAbin objects.
* 
Example code:
```r
library("apex")
## empty object
new("multidna")

## simple conversion with nicely ordered output
data(woodmouse)
genes <- list(gene1=woodmouse[,1:500], gene2=woodmouse[,501:965])
x <- new("multidna", genes)
x
par(mfrow=c(3,1))
image(woodmouse)
image(x@dna[[1]])
image(x@dna[[2]])

## trickier conversion with missing sequences / wrong order
genes <- list(gene1=woodmouse[,1:500], gene2=woodmouse[c(5:1,14:15),501:965])
x <- new("multidna", genes)
x
plot(x)
```

#### Reading data from multiple files
See the functions:
* **read.multidna:** reads multiple DNA alignments with various formats
* **read.multiFASTA:** same for FASTA files

Example code:
```r
files <- dir(system.file(package="apex"),patter="patr", full=TRUE)
files
     
## read files
x <- read.multiFATSA(files)
x
plot(x)
```



#### Data handling
See the functions:
* **concatenate:** concatenate seeral genes into a single DNAbin matrix 
* **x[i,j]:** subset x by individuals (i) and/or genes (j)
* **multidna2genind:** concatenate genes and export data to genind object

Example code:
```r
files <- dir(system.file(package="apex"),patter="patr", full=TRUE)
files
     
## read files
x <- read.multiFASTA(files)
x
plot(x)

## subset
plot(x[1:3,2:4])

## concatenate
y <- concatenate(x)
y
image(y)

## export to genind
obj <- multidna2genind(x)
obj

```
