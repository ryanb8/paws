% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_execute_policy}
\alias{autoscaling_execute_policy}
\title{Executes the specified policy}
\usage{
autoscaling_execute_policy(AutoScalingGroupName, PolicyName,
  HonorCooldown, MetricValue, BreachThreshold)
}
\arguments{
\item{AutoScalingGroupName}{The name of the Auto Scaling group.}

\item{PolicyName}{[required] The name or ARN of the policy.}

\item{HonorCooldown}{Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period
to complete before executing the policy.

This parameter is not supported if the policy type is \code{StepScaling} or
\code{TargetTrackingScaling}.

For more information, see \href{https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html}{Scaling Cooldowns}
in the \emph{Amazon EC2 Auto Scaling User Guide}.}

\item{MetricValue}{The metric value to compare to \code{BreachThreshold}. This enables you to
execute a policy of type \code{StepScaling} and determine which step
adjustment to use. For example, if the breach threshold is 50 and you
want to use a step adjustment with a lower bound of 0 and an upper bound
of 10, you can set the metric value to 59.

If you specify a metric value that doesn\'t correspond to a step
adjustment for the policy, the call returns an error.

Conditional: This parameter is required if the policy type is
\code{StepScaling} and not supported otherwise.}

\item{BreachThreshold}{The breach threshold for the alarm.

Conditional: This parameter is required if the policy type is
\code{StepScaling} and not supported otherwise.}
}
\description{
Executes the specified policy.
}
\section{Request syntax}{
\preformatted{svc$execute_policy(
  AutoScalingGroupName = "string",
  PolicyName = "string",
  HonorCooldown = TRUE|FALSE,
  MetricValue = 123.0,
  BreachThreshold = 123.0
)
}
}

\examples{
# This example executes the specified Auto Scaling policy for the
# specified Auto Scaling group.
\donttest{svc$execute_policy(
  AutoScalingGroupName = "my-auto-scaling-group",
  HonorCooldown = TRUE,
  PolicyName = "ScaleIn"
)}

}
\keyword{internal}
