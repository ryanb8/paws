% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicecatalog_operations.R
\name{servicecatalog_delete_portfolio_share}
\alias{servicecatalog_delete_portfolio_share}
\title{Stops sharing the specified portfolio with the specified account or
organization node}
\usage{
servicecatalog_delete_portfolio_share(AcceptLanguage, PortfolioId,
  AccountId, OrganizationNode)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{PortfolioId}{[required] The portfolio identifier.}

\item{AccountId}{The AWS account ID.}

\item{OrganizationNode}{The organization node to whom you are going to stop sharing.}
}
\description{
Stops sharing the specified portfolio with the specified account or
organization node. Shares to an organization node can only be deleted by
the master account of an Organization.
}
\section{Request syntax}{
\preformatted{svc$delete_portfolio_share(
  AcceptLanguage = "string",
  PortfolioId = "string",
  AccountId = "string",
  OrganizationNode = list(
    Type = "ORGANIZATION"|"ORGANIZATIONAL_UNIT"|"ACCOUNT",
    Value = "string"
  )
)
}
}

\keyword{internal}
