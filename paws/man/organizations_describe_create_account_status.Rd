% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/organizations_operations.R
\name{organizations_describe_create_account_status}
\alias{organizations_describe_create_account_status}
\title{Retrieves the current status of an asynchronous request to create an
account}
\usage{
organizations_describe_create_account_status(CreateAccountRequestId)
}
\arguments{
\item{CreateAccountRequestId}{[required] Specifies the \code{operationId} that uniquely identifies the request. You
can get the ID from the response to an earlier CreateAccount request, or
from the ListCreateAccountStatus operation.

The \href{http://wikipedia.org/wiki/regex}{regex pattern} for a create
account request ID string requires \"car-\" followed by from 8 to 32
lowercase letters or digits.}
}
\description{
Retrieves the current status of an asynchronous request to create an
account.
}
\details{
This operation can be called only from the organization\'s master
account.
}
\section{Request syntax}{
\preformatted{svc$describe_create_account_status(
  CreateAccountRequestId = "string"
)
}
}

\examples{
# The following example shows how to request the status about a previous
# request to create an account in an organization. This operation can be
# called only by a principal from the organization's master account. In
# the example, the specified "createAccountRequestId" comes from the
# response of the original call to "CreateAccount":
\donttest{svc$describe_create_account_status(
  CreateAccountRequestId = "car-exampleaccountcreationrequestid"
)}

}
\keyword{internal}
