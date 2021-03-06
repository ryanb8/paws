% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_create_ip_set}
\alias{guardduty_create_ip_set}
\title{Creates a new IPSet, called Trusted IP list in the consoler user
interface}
\usage{
guardduty_create_ip_set(DetectorId, Name, Format, Location, Activate,
  ClientToken, Tags)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector of the GuardDuty account for which you
want to create an IPSet.}

\item{Name}{[required] The user friendly name to identify the IPSet. This name is displayed in
all findings that are triggered by activity that involves IP addresses
included in this IPSet.}

\item{Format}{[required] The format of the file that contains the IPSet.}

\item{Location}{[required] The URI of the file that contains the IPSet. For example
(https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)}

\item{Activate}{[required] A boolean value that indicates whether GuardDuty is to start using the
uploaded IPSet.}

\item{ClientToken}{The idempotency token for the create request.}

\item{Tags}{The tags to be added to a new IP set resource.}
}
\description{
Creates a new IPSet, called Trusted IP list in the consoler user
interface. An IPSet is a list IP addresses trusted for secure
communication with AWS infrastructure and applications. GuardDuty does
not generate findings for IP addresses included in IPSets. Only users
from the master account can use this operation.
}
\section{Request syntax}{
\preformatted{svc$create_ip_set(
  DetectorId = "string",
  Name = "string",
  Format = "TXT"|"STIX"|"OTX_CSV"|"ALIEN_VAULT"|"PROOF_POINT"|"FIRE_EYE",
  Location = "string",
  Activate = TRUE|FALSE,
  ClientToken = "string",
  Tags = list(
    "string"
  )
)
}
}

\keyword{internal}
