% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_add_upload_buffer}
\alias{storagegateway_add_upload_buffer}
\title{Configures one or more gateway local disks as upload buffer for a
specified gateway}
\usage{
storagegateway_add_upload_buffer(GatewayARN, DiskIds)
}
\arguments{
\item{GatewayARN}{[required]}

\item{DiskIds}{[required] An array of strings that identify disks that are to be configured as
working storage. Each string have a minimum length of 1 and maximum
length of 300. You can get the disk IDs from the ListLocalDisks API.}
}
\description{
Configures one or more gateway local disks as upload buffer for a
specified gateway. This operation is supported for the stored volume,
cached volume and tape gateway types.
}
\details{
In the request, you specify the gateway Amazon Resource Name (ARN) to
which you want to add upload buffer, and one or more disk IDs that you
want to configure as upload buffer.
}
\section{Request syntax}{
\preformatted{svc$add_upload_buffer(
  GatewayARN = "string",
  DiskIds = list(
    "string"
  )
)
}
}

\examples{
# Configures one or more gateway local disks as upload buffer for a
# specified gateway.
\donttest{svc$add_upload_buffer(
  DiskIds = list(
    "pci-0000:03:00.0-scsi-0:0:0:0",
    "pci-0000:03:00.0-scsi-0:0:1:0"
  ),
  GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)}

}
\keyword{internal}
