% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_describe_document_classifier}
\alias{comprehend_describe_document_classifier}
\title{Gets the properties associated with a document classifier}
\usage{
comprehend_describe_document_classifier(DocumentClassifierArn)
}
\arguments{
\item{DocumentClassifierArn}{[required] The Amazon Resource Name (ARN) that identifies the document classifier.
The operation returns this identifier in its response.}
}
\description{
Gets the properties associated with a document classifier.
}
\section{Request syntax}{
\preformatted{svc$describe_document_classifier(
  DocumentClassifierArn = "string"
)
}
}

\keyword{internal}
