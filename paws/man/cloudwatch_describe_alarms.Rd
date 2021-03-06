% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatch_operations.R
\name{cloudwatch_describe_alarms}
\alias{cloudwatch_describe_alarms}
\title{Retrieves the specified alarms}
\usage{
cloudwatch_describe_alarms(AlarmNames, AlarmNamePrefix, StateValue,
  ActionPrefix, MaxRecords, NextToken)
}
\arguments{
\item{AlarmNames}{The names of the alarms.}

\item{AlarmNamePrefix}{The alarm name prefix. If this parameter is specified, you cannot
specify \code{AlarmNames}.}

\item{StateValue}{The state value to be used in matching alarms.}

\item{ActionPrefix}{The action name prefix.}

\item{MaxRecords}{The maximum number of alarm descriptions to retrieve.}

\item{NextToken}{The token returned by a previous call to indicate that there is more
data available.}
}
\description{
Retrieves the specified alarms. If no alarms are specified, all alarms
are returned. Alarms can be retrieved by using only a prefix for the
alarm name, the alarm state, or a prefix for any action.
}
\section{Request syntax}{
\preformatted{svc$describe_alarms(
  AlarmNames = list(
    "string"
  ),
  AlarmNamePrefix = "string",
  StateValue = "OK"|"ALARM"|"INSUFFICIENT_DATA",
  ActionPrefix = "string",
  MaxRecords = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
