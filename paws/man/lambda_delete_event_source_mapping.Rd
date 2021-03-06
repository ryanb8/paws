% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_operations.R
\name{lambda_delete_event_source_mapping}
\alias{lambda_delete_event_source_mapping}
\title{Deletes an event source mapping}
\usage{
lambda_delete_event_source_mapping(UUID)
}
\arguments{
\item{UUID}{[required] The identifier of the event source mapping.}
}
\description{
Deletes an \href{https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html}{event source mapping}.
You can get the identifier of a mapping from the output of
ListEventSourceMappings.
}
\details{
When you delete an event source mapping, it enters a \code{Deleting} state
and might not be completely deleted for several seconds.
}
\section{Request syntax}{
\preformatted{svc$delete_event_source_mapping(
  UUID = "string"
)
}
}

\examples{
# This operation deletes a Lambda function event source mapping
\donttest{svc$delete_event_source_mapping(
  UUID = "12345kxodurf3443"
)}

}
\keyword{internal}
