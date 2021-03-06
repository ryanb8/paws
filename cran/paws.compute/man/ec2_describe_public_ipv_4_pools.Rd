% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_public_ipv_4_pools}
\alias{ec2_describe_public_ipv_4_pools}
\title{Describes the specified IPv4 address pools}
\usage{
ec2_describe_public_ipv_4_pools(PoolIds, NextToken, MaxResults)
}
\arguments{
\item{PoolIds}{The IDs of the address pools.}

\item{NextToken}{The token for the next page of results.}

\item{MaxResults}{The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned \code{nextToken}
value.}
}
\description{
Describes the specified IPv4 address pools.
}
\section{Request syntax}{
\preformatted{svc$describe_public_ipv_4_pools(
  PoolIds = list(
    "string"
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
