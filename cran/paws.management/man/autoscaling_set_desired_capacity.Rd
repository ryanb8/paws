% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_set_desired_capacity}
\alias{autoscaling_set_desired_capacity}
\title{Sets the size of the specified Auto Scaling group}
\usage{
autoscaling_set_desired_capacity(AutoScalingGroupName, DesiredCapacity,
  HonorCooldown)
}
\arguments{
\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{DesiredCapacity}{[required] The number of EC2 instances that should be running in the Auto Scaling
group.}

\item{HonorCooldown}{Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period
to complete before initiating a scaling activity to set your Auto
Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling
does not honor the cooldown period during manual scaling activities.}
}
\description{
Sets the size of the specified Auto Scaling group.
}
\details{
For more information about desired capacity, see \href{https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html}{What Is Amazon EC2 Auto Scaling?}
in the \emph{Amazon EC2 Auto Scaling User Guide}.
}
\section{Request syntax}{
\preformatted{svc$set_desired_capacity(
  AutoScalingGroupName = "string",
  DesiredCapacity = 123,
  HonorCooldown = TRUE|FALSE
)
}
}

\examples{
# This example sets the desired capacity for the specified Auto Scaling
# group.
\donttest{svc$set_desired_capacity(
  AutoScalingGroupName = "my-auto-scaling-group",
  DesiredCapacity = 2L,
  HonorCooldown = TRUE
)}

}
\keyword{internal}
