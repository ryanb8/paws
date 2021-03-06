% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigatewayv2_operations.R
\name{apigatewayv2_delete_route_settings}
\alias{apigatewayv2_delete_route_settings}
\title{Deletes the RouteSettings for a stage}
\usage{
apigatewayv2_delete_route_settings(ApiId, RouteKey, StageName)
}
\arguments{
\item{ApiId}{[required] The API identifier.}

\item{RouteKey}{[required] The route key.}

\item{StageName}{[required] The stage name. Stage names can only contain alphanumeric characters,
hyphens, and underscores. Maximum length is 128 characters.}
}
\description{
Deletes the RouteSettings for a stage.
}
\section{Request syntax}{
\preformatted{svc$delete_route_settings(
  ApiId = "string",
  RouteKey = "string",
  StageName = "string"
)
}
}

\keyword{internal}
