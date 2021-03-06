% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ses_operations.R
\name{ses_get_send_statistics}
\alias{ses_get_send_statistics}
\title{Provides sending statistics for the current AWS Region}
\usage{
ses_get_send_statistics()
}
\description{
Provides sending statistics for the current AWS Region. The result is a
list of data points, representing the last two weeks of sending
activity. Each data point in the list contains statistics for a
15-minute period of time.
}
\details{
You can execute this operation no more than once per second.
}
\examples{
# The following example returns Amazon SES sending statistics:
\donttest{svc$get_send_statistics()}

}
\keyword{internal}
