% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecs_operations.R
\name{ecs_describe_container_instances}
\alias{ecs_describe_container_instances}
\title{Describes Amazon Elastic Container Service container instances}
\usage{
ecs_describe_container_instances(cluster, containerInstances, include)
}
\arguments{
\item{cluster}{The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the container instances to describe. If you do not specify a
cluster, the default cluster is assumed. This parameter is required if
the container instance or container instances you are describing were
launched in any cluster other than the default cluster.}

\item{containerInstances}{[required] A list of up to 100 container instance IDs or full Amazon Resource Name
(ARN) entries.}

\item{include}{Specifies whether you want to see the resource tags for the container
instance. If \code{TAGS} is specified, the tags are included in the response.
If this field is omitted, tags are not included in the response.}
}
\description{
Describes Amazon Elastic Container Service container instances. Returns
metadata about registered and remaining resources on each container
instance requested.
}
\section{Request syntax}{
\preformatted{svc$describe_container_instances(
  cluster = "string",
  containerInstances = list(
    "string"
  ),
  include = list(
    "TAGS"
  )
)
}
}

\examples{
# This example provides a description of the specified container instance
# in your default region, using the container instance UUID as an
# identifier.
\donttest{svc$describe_container_instances(
  cluster = "default",
  containerInstances = list(
    "f2756532-8f13-4d53-87c9-aed50dc94cd7"
  )
)}

}
\keyword{internal}
