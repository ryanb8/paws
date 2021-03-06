% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_operations.R
\name{batch_describe_job_queues}
\alias{batch_describe_job_queues}
\title{Describes one or more of your job queues}
\usage{
batch_describe_job_queues(jobQueues, maxResults, nextToken)
}
\arguments{
\item{jobQueues}{A list of up to 100 queue names or full queue Amazon Resource Name (ARN)
entries.}

\item{maxResults}{The maximum number of results returned by \code{DescribeJobQueues} in
paginated output. When this parameter is used, \code{DescribeJobQueues} only
returns \code{maxResults} results in a single page along with a \code{nextToken}
response element. The remaining results of the initial request can be
seen by sending another \code{DescribeJobQueues} request with the returned
\code{nextToken} value. This value can be between 1 and 100. If this
parameter is not used, then \code{DescribeJobQueues} returns up to 100
results and a \code{nextToken} value if applicable.}

\item{nextToken}{The \code{nextToken} value returned from a previous paginated
\code{DescribeJobQueues} request where \code{maxResults} was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the \code{nextToken} value. This value
is \code{null} when there are no more results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.}
}
\description{
Describes one or more of your job queues.
}
\section{Request syntax}{
\preformatted{svc$describe_job_queues(
  jobQueues = list(
    "string"
  ),
  maxResults = 123,
  nextToken = "string"
)
}
}

\examples{
# This example describes the HighPriority job queue.
\donttest{svc$describe_job_queues(
  jobQueues = list(
    "HighPriority"
  )
)}

}
\keyword{internal}
