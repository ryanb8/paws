% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_object_retention}
\alias{s3_get_object_retention}
\title{Retrieves an object's retention settings}
\usage{
s3_get_object_retention(Bucket, Key, VersionId, RequestPayer)
}
\arguments{
\item{Bucket}{[required] The bucket name containing the object whose retention settings you want
to retrieve.

When using this API with an access point, you must direct requests to
the access point hostname. The access point hostname takes the form
\emph{AccessPointName}-\emph{AccountId}.s3-accesspoint.\emph{Region}.amazonaws.com.
When using this operation using an access point through the AWS SDKs,
you provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html}{Using Access Points}
in the \emph{Amazon Simple Storage Service Developer Guide}.}

\item{Key}{[required] The key name for the object whose retention settings you want to
retrieve.}

\item{VersionId}{The version ID for the object whose retention settings you want to
retrieve.}

\item{RequestPayer}{}
}
\description{
Retrieves an object\'s retention settings. For more information, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html}{Locking Objects}.
}
\section{Request syntax}{
\preformatted{svc$get_object_retention(
  Bucket = "string",
  Key = "string",
  VersionId = "string",
  RequestPayer = "requester"
)
}
}

\keyword{internal}
