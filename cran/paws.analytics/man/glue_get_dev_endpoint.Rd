% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_dev_endpoint}
\alias{glue_get_dev_endpoint}
\title{Retrieves information about a specified development endpoint}
\usage{
glue_get_dev_endpoint(EndpointName)
}
\arguments{
\item{EndpointName}{[required] Name of the \code{DevEndpoint} to retrieve information for.}
}
\description{
Retrieves information about a specified development endpoint.
}
\details{
When you create a development endpoint in a virtual private cloud (VPC),
AWS Glue returns only a private IP address, and the public IP address
field is not populated. When you create a non-VPC development endpoint,
AWS Glue returns only a public IP address.
}
\section{Request syntax}{
\preformatted{svc$get_dev_endpoint(
  EndpointName = "string"
)
}
}

\keyword{internal}
