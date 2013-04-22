\name{parameter_bootstraps}
\alias{parameter_bootstraps}
\title{extract a data.frame of parameters from the bootstrapped replicate comparisons}
\usage{
  parameter_bootstraps(reps)
}
\arguments{
  \item{reps}{a list of outputs from compare()}
}
\value{
  a data.frame of columns "value" (parameter value),
  "parameter" (name of the parameter), "fit", a
  double-letter code indicating first which model created
  the simulation and second which model was fit to the
  data, "rep", a replicate id number.
}
\description{
  extract a data.frame of parameters from the bootstrapped
  replicate comparisons
}
\details{
  Consider ggplot2 tools to visualize this data, or use the
  subset() function on this data set to look at a
  particular parameter from a particular model fit. see
  examples for illustrations.
}
\seealso{
  \link{compare}, \link{roc_data}, \link{lik_ratios},
  \link{subset}
}

