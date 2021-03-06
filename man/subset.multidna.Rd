% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subset.R
\docType{methods}
\name{[,multidna,ANY,ANY,ANY-method}
\alias{[,multidna,ANY,ANY,ANY-method}
\alias{[,multidna-method}
\alias{[,multiphyDat,ANY,ANY,ANY-method}
\title{Subset multidna objects}
\usage{
\S4method{[}{multidna,ANY,ANY,ANY}(x, i, j, ..., drop = TRUE)

\S4method{[}{multiphyDat,ANY,ANY,ANY}(x, i, j, ..., drop = TRUE)
}
\arguments{
\item{x}{the \linkS4class{multidna} object to subset.}

\item{i}{a vector of logical, integers or characters to subset data by individuals; characters will be matched against individual labels.}

\item{j}{a vector of logical, integers or characters to subset data by genes; characters will be matched against gene names labels.}

\item{...}{further arguments to be passed to other methods; currently ignored.}

\item{drop}{present for compatibility with the generic; currently not used.}
}
\description{
Individuals in a \linkS4class{multidna} or \linkS4class{multiphyDat} object can be subsetted like the rows of a matrix, with the form x[i,].
Genes can be subsetted like the columns of a matrix, i.e. with the form x[,j].
}
\examples{

data(woodmouse)
genes <- list(gene1=woodmouse[,1:500], gene2=woodmouse[,501:965])
x <- new("multidna", genes)
x
plot(x)

## keep only the first 5 individuals
x[1:5,]
plot(x[1:5,])

## keep individuals 2,4,6 and the second gene
x[c(2,4,6),2]
plot(x[c(2,4,6),2])

}
\author{
Thibaut Jombart \email{t.jombart@imperial.ac.uk}
}

