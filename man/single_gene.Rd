% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/single_gene.R
\name{single_gene}
\alias{single_gene}
\title{single_gene}
\usage{
single_gene(
  annotation,
  read,
  readmap,
  chr,
  range,
  strand = "+",
  read_color = "#ADD8E6",
  isoform_color = "#00DD00",
  limit = 30,
  text_color = "#000000",
  text_size = 3,
  text_alpha = 1,
  text_fontface = "bold",
  title_color = "#000000",
  title_size = 10,
  title_face = "bold",
  x_text_size = 5,
  show_transcript_name = FALSE,
  num_color = "#000000",
  num_size = 3,
  num_alpha = 1,
  num_fontface = "bold",
  num_margin = 100
)
}
\arguments{
\item{annotation}{A gtf format data,such as Homo_sapiens.GRCh38.109.chr.gtf.}

\item{read}{A bed format data after alignment with the genome,having the GRanges object and the metadata of name column.}

\item{readmap}{A tsv format data,mapping the transcript_id to read name;The column name needs to contain the name and transcript id.}

\item{chr}{The chromosome of interest,such as chr="6".}

\item{range}{The range of interest,such as range=c(36000000,36700000).}

\item{strand}{The strand of interest,such as strand="+" or "-" or "both";the default value is "both".}

\item{read_color}{Displays the color of the read structure.}

\item{isoform_color}{Displays the color of the transcript isoform structure}

\item{limit}{To limit the number of read displays. If the read count exceeds the limit value, the limit+log2(read count-limit)  number of reads will be randomly selected.}

\item{text_color}{The font color of transcript name.}

\item{text_size}{The font size of transcript name.}

\item{text_alpha}{The font transparency of transcript name.}

\item{text_fontface}{The  font shape of transcript name.}

\item{title_color}{The font color  of tittle name.}

\item{title_size}{The font size of tittle name.}

\item{title_face}{The  font shape of tittle name.}

\item{x_text_size}{The text size of x axis.}

\item{show_transcript_name}{Whether the transcript name is displayed in the plot.}

\item{num_color}{The font color of read number.}

\item{num_size}{The font size of read number.}

\item{num_alpha}{The font transparency of read number.}

\item{num_fontface}{The  font shape of read number.}

\item{num_margin}{The read numbe moves to the left.}
}
\value{
return a list object with ggplot2.
}
\description{
Drawing the transcript exon and intron structure of a gene in the range.
}
\examples{
p_list=single_gene(annotation,MUT1_read,readmap,chr='6',strand="+",range=c(36050000,36700000),show_transcript_name=TRUE)
p_list[[1]]
}
