% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_batch_get_triggers}
\alias{glue_batch_get_triggers}
\title{Returns a list of resource metadata for a given list of trigger names}
\usage{
glue_batch_get_triggers(TriggerNames)
}
\arguments{
\item{TriggerNames}{[required] A list of trigger names, which may be the names returned from the
\code{ListTriggers} operation.}
}
\description{
Returns a list of resource metadata for a given list of trigger names.
After calling the \code{ListTriggers} operation, you can call this operation
to access the data to which you have been granted permissions. This
operation supports all IAM permissions, including permission conditions
that uses tags.
}
\section{Request syntax}{
\preformatted{svc$batch_get_triggers(
  TriggerNames = list(
    "string"
  )
)
}
}

\keyword{internal}
