% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudtrail_operations.R
\name{cloudtrail_get_trail}
\alias{cloudtrail_get_trail}
\title{Returns settings information for a specified trail}
\usage{
cloudtrail_get_trail(Name)
}
\arguments{
\item{Name}{[required] The name or the Amazon Resource Name (ARN) of the trail for which you
want to retrieve settings information.}
}
\description{
Returns settings information for a specified trail.
}
\section{Request syntax}{
\preformatted{svc$get_trail(
  Name = "string"
)
}
}

\keyword{internal}
