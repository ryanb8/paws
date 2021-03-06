% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_set_instance_health}
\alias{autoscaling_set_instance_health}
\title{Sets the health status of the specified instance}
\usage{
autoscaling_set_instance_health(InstanceId, HealthStatus,
  ShouldRespectGracePeriod)
}
\arguments{
\item{InstanceId}{[required] The ID of the instance.}

\item{HealthStatus}{[required] The health status of the instance. Set to \code{Healthy} to have the instance
remain in service. Set to \code{Unhealthy} to have the instance be out of
service. Amazon EC2 Auto Scaling terminates and replaces the unhealthy
instance.}

\item{ShouldRespectGracePeriod}{If the Auto Scaling group of the specified instance has a
\code{HealthCheckGracePeriod} specified for the group, by default, this call
respects the grace period. Set this to \code{False}, to have the call not
respect the grace period associated with the group.

For more information about the health check grace period, see
CreateAutoScalingGroup.}
}
\description{
Sets the health status of the specified instance.
}
\details{
For more information, see \href{https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html}{Health Checks for Auto Scaling Instances}
in the \emph{Amazon EC2 Auto Scaling User Guide}.
}
\section{Request syntax}{
\preformatted{svc$set_instance_health(
  InstanceId = "string",
  HealthStatus = "string",
  ShouldRespectGracePeriod = TRUE|FALSE
)
}
}

\examples{
# This example sets the health status of the specified instance to
# Unhealthy.
\donttest{svc$set_instance_health(
  HealthStatus = "Unhealthy",
  InstanceId = "i-93633f9b"
)}

}
\keyword{internal}
