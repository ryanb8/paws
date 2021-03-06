% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_get_event_stream}
\alias{pinpoint_get_event_stream}
\title{Retrieves information about the event stream settings for an application}
\usage{
pinpoint_get_event_stream(ApplicationId)
}
\arguments{
\item{ApplicationId}{[required] The unique identifier for the application. This identifier is displayed
as the \strong{Project ID} on the Amazon Pinpoint console.}
}
\description{
Retrieves information about the event stream settings for an
application.
}
\section{Request syntax}{
\preformatted{svc$get_event_stream(
  ApplicationId = "string"
)
}
}

\keyword{internal}
