% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_register_instance}
\alias{opsworks_register_instance}
\title{Registers instances that were created outside of AWS OpsWorks Stacks
with a specified stack}
\usage{
opsworks_register_instance(StackId, Hostname, PublicIp, PrivateIp,
  RsaPublicKey, RsaPublicKeyFingerprint, InstanceIdentity)
}
\arguments{
\item{StackId}{[required] The ID of the stack that the instance is to be registered with.}

\item{Hostname}{The instance\'s hostname.}

\item{PublicIp}{The instance\'s public IP address.}

\item{PrivateIp}{The instance\'s private IP address.}

\item{RsaPublicKey}{The instances public RSA key. This key is used to encrypt communication
between the instance and the service.}

\item{RsaPublicKeyFingerprint}{The instances public RSA key fingerprint.}

\item{InstanceIdentity}{An InstanceIdentity object that contains the instance\'s identity.}
}
\description{
Registers instances that were created outside of AWS OpsWorks Stacks
with a specified stack.
}
\details{
We do not recommend using this action to register instances. The
complete registration operation includes two tasks: installing the AWS
OpsWorks Stacks agent on the instance, and registering the instance with
the stack. \code{RegisterInstance} handles only the second step. You should
instead use the AWS CLI \code{register} command, which performs the entire
registration operation. For more information, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html}{Registering an Instance with an AWS OpsWorks Stacks Stack}.

Registered instances have the same requirements as instances that are
created by using the CreateInstance API. For example, registered
instances must be running a supported Linux-based operating system, and
they must have a supported instance type. For more information about
requirements for instances that you want to register, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html}{Preparing the Instance}.

\strong{Required Permissions}: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user permissions,
see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Request syntax}{
\preformatted{svc$register_instance(
  StackId = "string",
  Hostname = "string",
  PublicIp = "string",
  PrivateIp = "string",
  RsaPublicKey = "string",
  RsaPublicKeyFingerprint = "string",
  InstanceIdentity = list(
    Document = "string",
    Signature = "string"
  )
)
}
}

\keyword{internal}
