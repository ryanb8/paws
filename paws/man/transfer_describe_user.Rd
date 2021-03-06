% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transfer_operations.R
\name{transfer_describe_user}
\alias{transfer_describe_user}
\title{Describes the user assigned to a specific server, as identified by its
ServerId property}
\usage{
transfer_describe_user(ServerId, UserName)
}
\arguments{
\item{ServerId}{[required] A system-assigned unique identifier for an SFTP server that has this
user assigned.}

\item{UserName}{[required] The name of the user assigned to one or more servers. User names are
part of the sign-in credentials to use the AWS Transfer for SFTP service
and perform file transfer tasks.}
}
\description{
Describes the user assigned to a specific server, as identified by its
\code{ServerId} property.
}
\details{
The response from this call returns the properties of the user
associated with the \code{ServerId} value that was specified.
}
\section{Request syntax}{
\preformatted{svc$describe_user(
  ServerId = "string",
  UserName = "string"
)
}
}

\keyword{internal}
