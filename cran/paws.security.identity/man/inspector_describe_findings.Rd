% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspector_operations.R
\name{inspector_describe_findings}
\alias{inspector_describe_findings}
\title{Describes the findings that are specified by the ARNs of the findings}
\usage{
inspector_describe_findings(findingArns, locale)
}
\arguments{
\item{findingArns}{[required] The ARN that specifies the finding that you want to describe.}

\item{locale}{The locale into which you want to translate a finding description,
recommendation, and the short description that identifies the finding.}
}
\description{
Describes the findings that are specified by the ARNs of the findings.
}
\section{Request syntax}{
\preformatted{svc$describe_findings(
  findingArns = list(
    "string"
  ),
  locale = "EN_US"
)
}
}

\examples{
# Describes the findings that are specified by the ARNs of the findings.
\donttest{svc$describe_findings(
  findingArns = list(
    "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MK..."
  )
)}

}
\keyword{internal}
