% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LDheatmap.addGenes.R
\name{LDheatmap.addGenes}
\alias{LDheatmap.addGenes}
\title{Add gene plot to an LDheatmap object.}
\usage{
LDheatmap.addGenes(LDheatmap, chromosome, genome = NULL, genesLocation = 0.02,
splice_variants = TRUE, non_coding = TRUE)
}
\arguments{
\item{LDheatmap}{An object of class LDheatmap.}

\item{chromosome}{A character string that identifies the chromosome.}

\item{genome}{The genome assembly to use. The default is the most recent human genome assembly on the UCSC genome browser.}

\item{genesLocation}{The gene plot distance from the LD heat map gene map.}

\item{splice_variants}{If \code{FALSE}, exclude gene splice variants.}

\item{non_coding}{If \code{FALSE}, exclude non-coding genes.}
}
\value{
An object of class LDheatmap given as an argument, with the \code{grob}
\code{LDheatmapGrob} modified to inclue the \code{"transcripts"} child grob.
}
\description{
Retrieve genes from the UCSC Genome Browser, generate the genes plot and add it to
an LDheatmap object.
}
\details{
Note: The \code{LDheatmap} object should have a non-NULL \code{genetic.distances}
component. Otherwise the gene map will not be placed correctly.
The genes are color coded as follows:
 black -- feature has a corresponding entry in the Protein Data Bank (PDB);
dark blue -- transcript has been reviewed or validated by either the RefSeq, SwissProt or CCDS staff;
medium blue -- other RefSeq transcripts; and
light blue -- non-RefSeq transcripts.

For assemblies older than hg18, all genes are plotted in grey.
}
\examples{
\donttest{
data(GIMAP5.CEU)
ll<-LDheatmap(GIMAP5.CEU$snp.data,GIMAP5.CEU$snp.support$Position,flip=TRUE)
# Add gene plot
llplusgenes <- LDheatmap.addGenes(ll, chr="chr7", genome="hg18")
}
}
\references{
\url{http://genome.ucsc.edu/cgi-bin/hgTrackUi?g=knownGene}
}
\seealso{
\code{\link{LDheatmap}}, \code{\link{plotGenes}}
}
\author{
Sigal Blay <sblay@sfu.ca>
}
\keyword{hplot}
