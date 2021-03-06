% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecommit_operations.R
\name{codecommit_get_comment}
\alias{codecommit_get_comment}
\title{Returns the content of a comment made on a change, file, or commit in a
repository}
\usage{
codecommit_get_comment(commentId)
}
\arguments{
\item{commentId}{[required] The unique, system-generated ID of the comment. To get this ID, use
GetCommentsForComparedCommit or GetCommentsForPullRequest.}
}
\description{
Returns the content of a comment made on a change, file, or commit in a
repository.
}
\section{Request syntax}{
\preformatted{svc$get_comment(
  commentId = "string"
)
}
}

\keyword{internal}
