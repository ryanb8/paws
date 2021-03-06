% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/organizations_operations.R
\name{organizations_list_children}
\alias{organizations_list_children}
\title{Lists all of the organizational units (OUs) or accounts that are
contained in the specified parent OU or root}
\usage{
organizations_list_children(ParentId, ChildType, NextToken, MaxResults)
}
\arguments{
\item{ParentId}{[required] The unique identifier (ID) for the parent root or OU whose children you
want to list.

The \href{http://wikipedia.org/wiki/regex}{regex pattern} for a parent ID
string requires one of the following:
\itemize{
\item \strong{Root} - A string that begins with \"r-\" followed by from 4 to 32
lowercase letters or digits.
\item \strong{Organizational unit (OU)} - A string that begins with \"ou-\"
followed by from 4 to 32 lowercase letters or digits (the ID of the
root that the OU is in). This string is followed by a second \"-\"
dash and from 8 to 32 additional lowercase letters or digits.
}}

\item{ChildType}{[required] Filters the output to include only the specified child type.}

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
Lists all of the organizational units (OUs) or accounts that are
contained in the specified parent OU or root. This operation, along with
ListParents enables you to traverse the tree structure that makes up
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
}
\section{Request syntax}{
\preformatted{svc$list_children(
  ParentId = "string",
  ChildType = "ACCOUNT"|"ORGANIZATIONAL_UNIT",
  NextToken = "string",
  MaxResults = 123
)
}
}

\examples{
# The following example shows how to request a list of the child OUs in a
# parent root or OU:/n/n
\donttest{svc$list_children(
  ChildType = "ORGANIZATIONAL_UNIT",
  ParentId = "ou-examplerootid111-exampleouid111"
)}

}
\keyword{internal}
