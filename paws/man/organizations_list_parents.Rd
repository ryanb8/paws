% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/organizations_operations.R
\name{organizations_list_parents}
\alias{organizations_list_parents}
\title{Lists the root or organizational units (OUs) that serve as the immediate
parent of the specified child OU or account}
\usage{
organizations_list_parents(ChildId, NextToken, MaxResults)
}
\arguments{
\item{ChildId}{[required] The unique identifier (ID) of the OU or account whose parent containers
you want to list. Don\'t specify a root.

The \href{http://wikipedia.org/wiki/regex}{regex pattern} for a child ID
string requires one of the following:
\itemize{
\item \strong{Account} - A string that consists of exactly 12 digits.
\item \strong{Organizational unit (OU)} - A string that begins with \"ou-\"
followed by from 4 to 32 lowercase letters or digits (the ID of the
root that contains the OU). This string is followed by a second
\"-\" dash and from 8 to 32 additional lowercase letters or digits.
}}

\item{NextToken}{Use this parameter if you receive a \code{NextToken} response in a previous
request that indicates that there is more output available. Set it to
the value of the previous call\'s \code{NextToken} response to indicate where
the output should continue from.}

\item{MaxResults}{(Optional) Use this to limit the number of results you want included per
page in the response. If you do not include this parameter, it defaults
to a value that is specific to the operation. If additional items exist
beyond the maximum you specify, the \code{NextToken} response element is
present and has a value (is not null). Include that value as the
\code{NextToken} request parameter in the next call to the operation to get
the next part of the results. Note that Organizations might return fewer
results than the maximum even when there are more results available. You
should check \code{NextToken} after every operation to ensure that you
receive all of the results.}
}
\description{
Lists the root or organizational units (OUs) that serve as the immediate
parent of the specified child OU or account. This operation, along with
ListChildren enables you to traverse the tree structure that makes up
this root.
}
\details{
Always check the \code{NextToken} response parameter for a \code{null} value when
calling a \verb{List*} operation. These operations can occasionally return an
empty set of results even when there are more results available. The
\code{NextToken} response parameter value is \code{null} \emph{only} when there are no
more results to display.

This operation can be called only from the organization\'s master
account.

In the current release, a child can have only a single parent.
}
\section{Request syntax}{
\preformatted{svc$list_parents(
  ChildId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\examples{
# The following example shows how to list the root or OUs that contain
# account 444444444444:/n/n
\donttest{svc$list_parents(
  ChildId = "444444444444"
)}

}
\keyword{internal}
