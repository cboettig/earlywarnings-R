#' extract a data.frame of parameters from the bootstrapped replicate comparisons 
#' @param reps a list of outputs from compare()
#' @return a data.frame of columns "value" (parameter value), 
#' "parameter" (name of the parameter), "fit", a double-letter code indicating
#' first which model created the simulation and second which model was fit to the data,
#' "rep", a replicate id number.  
#' @details Consider ggplot2 tools to visualize this data, or use the subset() function 
#' on this data set to look at a particular parameter from a particular model fit.
#' see examples for illustrations.  
#' @seealso \link{compare}, \link{roc_data}, \link{lik_ratios}, \link{subset}
#' @import reshape2
#' @export

parameter_bootstraps <- function(reps){
  dat <- lapply(reps, function(rep){
          list(AA=as.list(fitted(rep$AA)), AB=as.list(fitted(rep$AB)), 
               BA=as.list(fitted(rep$BA)), BB=as.list(fitted(rep$BB)))
  })
  dat <- melt(dat)
  names(dat) <- c("value", "parameter", "fit", "rep") 
  dat
}
