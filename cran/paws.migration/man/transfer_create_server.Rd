% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transfer_operations.R
\name{transfer_create_server}
\alias{transfer_create_server}
\title{Instantiates an autoscaling virtual server based on Secure File Transfer
Protocol (SFTP) in AWS}
\usage{
transfer_create_server(EndpointDetails, EndpointType, HostKey,
  IdentityProviderDetails, IdentityProviderType, LoggingRole, Tags)
}
\arguments{
\item{EndpointDetails}{The virtual private cloud (VPC) endpoint settings that are configured
for your SFTP server. With a VPC endpoint, you can restrict access to
your SFTP server to resources only within your VPC. To control incoming
internet traffic, you will need to invoke the \code{UpdateServer} API and
attach an Elastic IP to your server\'s endpoint.}

\item{EndpointType}{The type of VPC endpoint that you want your SFTP server to connect to.
You can choose to connect to the public internet or a virtual private
cloud (VPC) endpoint. With a VPC endpoint, you can restrict access to
your SFTP server and resources only within your VPC.}

\item{HostKey}{The RSA private key as generated by the
\verb{ssh-keygen -N "" -f my-new-server-key} command.

If you aren\'t planning to migrate existing users from an existing SFTP
server to a new AWS SFTP server, don\'t update the host key.
Accidentally changing a server\'s host key can be disruptive.

For more information, see
\"https://alpha-docs-aws.amazon.com/transfer/latest/userguide/configuring-servers.html\\#change-host-key\"
in the \emph{AWS SFTP User Guide.}}

\item{IdentityProviderDetails}{This parameter is required when the \code{IdentityProviderType} is set to
\code{API_GATEWAY}. Accepts an array containing all of the information
required to call a customer-supplied authentication API, including the
API Gateway URL. This property is not required when the
\code{IdentityProviderType} is set to \code{SERVICE_MANAGED}.}

\item{IdentityProviderType}{Specifies the mode of authentication for the SFTP server. The default
value is \code{SERVICE_MANAGED}, which allows you to store and access SFTP
user credentials within the AWS Transfer for SFTP service. Use the
\code{API_GATEWAY} value to integrate with an identity provider of your
choosing. The \code{API_GATEWAY} setting requires you to provide an API
Gateway endpoint URL to call for authentication using the
\code{IdentityProviderDetails} parameter.}

\item{LoggingRole}{A value that allows the service to write your SFTP users\' activity to
your Amazon CloudWatch logs for monitoring and auditing purposes.}

\item{Tags}{Key-value pairs that can be used to group and search for servers.}
}
\description{
Instantiates an autoscaling virtual server based on Secure File Transfer
Protocol (SFTP) in AWS. When you make updates to your server or when you
work with users, use the service-generated \code{ServerId} property that is
assigned to the newly created server.
}
\section{Request syntax}{
\preformatted{svc$create_server(
  EndpointDetails = list(
    AddressAllocationIds = list(
      "string"
    ),
    SubnetIds = list(
      "string"
    ),
    VpcEndpointId = "string",
    VpcId = "string"
  ),
  EndpointType = "PUBLIC"|"VPC"|"VPC_ENDPOINT",
  HostKey = "string",
  IdentityProviderDetails = list(
    Url = "string",
    InvocationRole = "string"
  ),
  IdentityProviderType = "SERVICE_MANAGED"|"API_GATEWAY",
  LoggingRole = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
