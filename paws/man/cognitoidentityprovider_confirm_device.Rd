% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_confirm_device}
\alias{cognitoidentityprovider_confirm_device}
\title{Confirms tracking of the device}
\usage{
cognitoidentityprovider_confirm_device(AccessToken, DeviceKey,
  DeviceSecretVerifierConfig, DeviceName)
}
\arguments{
\item{AccessToken}{[required] The access token.}

\item{DeviceKey}{[required] The device key.}

\item{DeviceSecretVerifierConfig}{The configuration of the device secret verifier.}

\item{DeviceName}{The device name.}
}
\description{
Confirms tracking of the device. This API call is the call that begins
device tracking.
}
\section{Request syntax}{
\preformatted{svc$confirm_device(
  AccessToken = "string",
  DeviceKey = "string",
  DeviceSecretVerifierConfig = list(
    PasswordVerifier = "string",
    Salt = "string"
  ),
  DeviceName = "string"
)
}
}

\keyword{internal}
