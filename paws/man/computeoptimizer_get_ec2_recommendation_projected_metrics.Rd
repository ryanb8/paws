% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/computeoptimizer_operations.R
\name{computeoptimizer_get_ec2_recommendation_projected_metrics}
\alias{computeoptimizer_get_ec2_recommendation_projected_metrics}
\title{Returns the projected utilization metrics of Amazon EC2 instance
recommendations}
\usage{
computeoptimizer_get_ec2_recommendation_projected_metrics(instanceArn,
  stat, period, startTime, endTime)
}
\arguments{
\item{instanceArn}{[required] The Amazon Resource Name (ARN) of the instances for which to return
recommendation projected metrics.}

\item{stat}{[required] The statistic of the projected metrics.}

\item{period}{[required] The granularity, in seconds, of the projected metrics data points.}

\item{startTime}{[required] The time stamp of the first projected metrics data point to return.}

\item{endTime}{[required] The time stamp of the last projected metrics data point to return.}
}
\description{
Returns the projected utilization metrics of Amazon EC2 instance
recommendations.
}
\section{Request syntax}{
\preformatted{svc$get_ec2_recommendation_projected_metrics(
  instanceArn = "string",
  stat = "Maximum"|"Average",
  period = 123,
  startTime = as.POSIXct(
    "2015-01-01"
  ),
  endTime = as.POSIXct(
    "2015-01-01"
  )
)
}
}

\keyword{internal}
