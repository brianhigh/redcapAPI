% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exportReports.R
\name{exportReports}
\alias{exportReports}
\alias{exportReports.redcapApiConnection}
\alias{exportReports.redcapDbConnection}
\title{Export Reports from a REDCap Database}
\usage{
exportReports(rcon, report_id, factors = TRUE, labels = TRUE,
  dates = TRUE, checkboxLabels = FALSE, ...)

\method{exportReports}{redcapDbConnection}(rcon, report_id, factors = TRUE,
  labels = TRUE, dates = TRUE, checkboxLabels = FALSE, ...)

\method{exportReports}{redcapApiConnection}(rcon, report_id, factors = TRUE,
  labels = TRUE, dates = TRUE, checkboxLabels = FALSE, ..., proj = NULL)
}
\arguments{
\item{rcon}{A REDCap connection object as created by \code{redcapConnection}.}

\item{report_id}{Integer.  Gives the report id of the desired report. 
This is located on the Report Builder page of the user interface on REDCap.}

\item{factors}{Logical.  Determines if categorical data from the database 
is returned as numeric codes or labelled factors.}

\item{labels}{Logical.  Determines if the variable labels are applied to the data frame.}

\item{dates}{Logical. Determines if date variables are converted to POSIXlt format during the download.}

\item{checkboxLabels}{Logical. Determines the format of labels in checkbox 
variables.  If \code{FALSE} labels are applies as "Unchecked"/"Checked".  
If \code{TRUE}, they are applied as ""/"[field_labe]" where [field_label] 
is the label assigned to the level in the data dictionary. This option 
is only available after REDCap version 6.0.}

\item{...}{Additional arguments to be passed between methods.}

\item{proj}{A \code{redcapProject} object as created by \code{redcapProjectInfo}.}
}
\description{
Exports reports from a REDCap Database and formats data if requested
}
\details{
A record of exports through the API is recorded in the Logging section of 
the project.

Reports are exported based on their id number, which can be looked up in 
the Reports page of a project
}
\author{
Benjamin Nutter
}

