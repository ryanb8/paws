% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecommit_operations.R
\name{codecommit_get_pull_request}
\alias{codecommit_get_pull_request}
\title{Gets information about a pull request in a specified repository}
\usage{
codecommit_get_pull_request(pullRequestId)
}
\arguments{
\item{pullRequestId}{[required] The system-generated ID of the pull request. To get this ID, use
ListPullRequests.}
}
\description{
Gets information about a pull request in a specified repository.
}
\section{Request syntax}{
\preformatted{svc$get_pull_request(
  pullRequestId = "string"
)
}
}

\keyword{internal}
