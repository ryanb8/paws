% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigatewayv2_operations.R
\name{apigatewayv2_get_authorizers}
\alias{apigatewayv2_get_authorizers}
\title{Gets the Authorizers for an API}
\usage{
apigatewayv2_get_authorizers(ApiId, MaxResults, NextToken)
}
\arguments{
\item{ApiId}{[required] The API identifier.}

\item{MaxResults}{The maximum number of elements to be returned for this resource.}

\item{NextToken}{The next page of elements from this collection. Not valid for the last
element of the collection.}
}
\description{
Gets the Authorizers for an API.
}
\section{Request syntax}{
\preformatted{svc$get_authorizers(
  ApiId = "string",
  MaxResults = "string",
  NextToken = "string"
)
}
}

\keyword{internal}
