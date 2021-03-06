% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudtrail_operations.R
\name{cloudtrail_remove_tags}
\alias{cloudtrail_remove_tags}
\title{Removes the specified tags from a trail}
\usage{
cloudtrail_remove_tags(ResourceId, TagsList)
}
\arguments{
\item{ResourceId}{[required] Specifies the ARN of the trail from which tags should be removed. The
format of a trail ARN is:

\code{arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail}}

\item{TagsList}{Specifies a list of tags to be removed.}
}
\description{
Removes the specified tags from a trail.
}
\section{Request syntax}{
\preformatted{svc$remove_tags(
  ResourceId = "string",
  TagsList = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
