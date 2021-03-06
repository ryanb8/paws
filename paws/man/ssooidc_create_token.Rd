% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssooidc_operations.R
\name{ssooidc_create_token}
\alias{ssooidc_create_token}
\title{Creates and returns an access token for the authorized client}
\usage{
ssooidc_create_token(clientId, clientSecret, grantType, deviceCode,
  code, refreshToken, scope, redirectUri)
}
\arguments{
\item{clientId}{[required] The unique identifier string for each client. This value should come
from the persisted result of the RegisterClient API.}

\item{clientSecret}{[required] A secret string generated for the client. This value should come from
the persisted result of the RegisterClient API.}

\item{grantType}{[required] Supports grant types for authorization code, refresh token, and device
code request.}

\item{deviceCode}{[required] Used only when calling this API for the device code grant type. This
short-term code is used to identify this authentication attempt. This
should come from an in-memory reference to the result of the
StartDeviceAuthorization API.}

\item{code}{The authorization code received from the authorization service. This
parameter is required to perform an authorization grant request to get
access to a token.}

\item{refreshToken}{The token used to obtain an access token in the event that the access
token is invalid or expired. This token is not issued by the service.}

\item{scope}{The list of scopes that is defined by the client. Upon authorization,
this list is used to restrict permissions when granting an access token.}

\item{redirectUri}{The location of the application that will receive the authorization
code. Users authorize the service to send the request to this location.}
}
\description{
Creates and returns an access token for the authorized client. The
access token issued will be used to fetch short-term credentials for the
assigned roles in the AWS account.
}
\section{Request syntax}{
\preformatted{svc$create_token(
  clientId = "string",
  clientSecret = "string",
  grantType = "string",
  deviceCode = "string",
  code = "string",
  refreshToken = "string",
  scope = list(
    "string"
  ),
  redirectUri = "string"
)
}
}

\keyword{internal}
