% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchevents_operations.R
\name{cloudwatchevents_untag_resource}
\alias{cloudwatchevents_untag_resource}
\title{Removes one or more tags from the specified EventBridge resource}
\usage{
cloudwatchevents_untag_resource(ResourceARN, TagKeys)
}
\arguments{
\item{ResourceARN}{[required] The ARN of the rule that you\'re removing tags from.}

\item{TagKeys}{[required] The list of tag keys to remove from the resource.}
}
\description{
Removes one or more tags from the specified EventBridge resource. In
EventBridge, rules can be tagged.
}
\section{Request syntax}{
\preformatted{svc$untag_resource(
  ResourceARN = "string",
  TagKeys = list(
    "string"
  )
)
}
}

\keyword{internal}
