% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_create_export_job}
\alias{pinpoint_create_export_job}
\title{Creates an export job}
\usage{
pinpoint_create_export_job(ApplicationId, ExportJobRequest)
}
\arguments{
\item{ApplicationId}{[required] The unique ID of your Amazon Pinpoint application.}

\item{ExportJobRequest}{[required]}
}
\description{
Creates an export job.
}
\section{Request syntax}{
\preformatted{pinpoint$create_export_job(
  ApplicationId = "string",
  ExportJobRequest = list(
    RoleArn = "string",
    S3UrlPrefix = "string",
    SegmentId = "string",
    SegmentVersion = 123
  )
)
}
}

\keyword{internal}