% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecr_operations.R
\name{ecr_get_lifecycle_policy}
\alias{ecr_get_lifecycle_policy}
\title{Retrieves the specified lifecycle policy}
\usage{
ecr_get_lifecycle_policy(registryId, repositoryName)
}
\arguments{
\item{registryId}{The AWS account ID associated with the registry that contains the
repository. If you do not specify a registry, the default registry is
assumed.}

\item{repositoryName}{[required] The name of the repository.}
}
\description{
Retrieves the specified lifecycle policy.
}
\section{Request syntax}{
\preformatted{svc$get_lifecycle_policy(
  registryId = "string",
  repositoryName = "string"
)
}
}

\keyword{internal}
