% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_list_function_definitions}
\alias{greengrass_list_function_definitions}
\title{Retrieves a list of Lambda function definitions}
\usage{
greengrass_list_function_definitions(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{The maximum number of results to be returned per request.}

\item{NextToken}{The token for the next set of results, or ''null'' if there are no additional results.}
}
\description{
Retrieves a list of Lambda function definitions.
}
\section{Request syntax}{
\preformatted{svc$list_function_definitions(
  MaxResults = "string",
  NextToken = "string"
)
}
}

\keyword{internal}
