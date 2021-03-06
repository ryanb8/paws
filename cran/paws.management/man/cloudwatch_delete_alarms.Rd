% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatch_operations.R
\name{cloudwatch_delete_alarms}
\alias{cloudwatch_delete_alarms}
\title{Deletes the specified alarms}
\usage{
cloudwatch_delete_alarms(AlarmNames)
}
\arguments{
\item{AlarmNames}{[required] The alarms to be deleted.}
}
\description{
Deletes the specified alarms. You can delete up to 50 alarms in one
operation. In the event of an error, no alarms are deleted.
}
\section{Request syntax}{
\preformatted{svc$delete_alarms(
  AlarmNames = list(
    "string"
  )
)
}
}

\keyword{internal}
