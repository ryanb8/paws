% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_get_access_point_policy}
\alias{s3control_get_access_point_policy}
\title{Returns the access point policy associated with the specified access
point}
\usage{
s3control_get_access_point_policy(AccountId, Name)
}
\arguments{
\item{AccountId}{[required] The account ID for the account that owns the specified access point.}

\item{Name}{[required] The name of the access point whose policy you want to retrieve.}
}
\description{
Returns the access point policy associated with the specified access
point.
}
\section{Request syntax}{
\preformatted{svc$get_access_point_policy(
  AccountId = "string",
  Name = "string"
)
}
}

\keyword{internal}
