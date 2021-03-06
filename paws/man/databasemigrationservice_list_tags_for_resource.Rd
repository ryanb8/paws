% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databasemigrationservice_operations.R
\name{databasemigrationservice_list_tags_for_resource}
\alias{databasemigrationservice_list_tags_for_resource}
\title{Lists all tags for an AWS DMS resource}
\usage{
databasemigrationservice_list_tags_for_resource(ResourceArn)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) string that uniquely identifies the AWS
DMS resource.}
}
\description{
Lists all tags for an AWS DMS resource.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  ResourceArn = "string"
)
}
}

\examples{
# Lists all tags for an AWS DMS resource.
\donttest{svc$list_tags_for_resource(
  ResourceArn = ""
)}

}
\keyword{internal}
