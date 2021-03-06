% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_suspend_processes}
\alias{autoscaling_suspend_processes}
\title{Suspends the specified automatic scaling processes, or all processes,
for the specified Auto Scaling group}
\usage{
autoscaling_suspend_processes(AutoScalingGroupName, ScalingProcesses)
}
\arguments{
\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{ScalingProcesses}{One or more of the following processes. If you omit this parameter, all
processes are specified.
\itemize{
\item \code{Launch}
\item \code{Terminate}
\item \code{HealthCheck}
\item \code{ReplaceUnhealthy}
\item \code{AZRebalance}
\item \code{AlarmNotification}
\item \code{ScheduledActions}
\item \code{AddToLoadBalancer}
}}
}
\description{
Suspends the specified automatic scaling processes, or all processes,
for the specified Auto Scaling group.
}
\details{
If you suspend either the \code{Launch} or \code{Terminate} process types, it can
prevent other process types from functioning properly.

To resume processes that have been suspended, use ResumeProcesses.

For more information, see \href{https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html}{Suspending and Resuming Scaling Processes}
in the \emph{Amazon EC2 Auto Scaling User Guide}.
}
\section{Request syntax}{
\preformatted{svc$suspend_processes(
  AutoScalingGroupName = "string",
  ScalingProcesses = list(
    "string"
  )
)
}
}

\examples{
# This example suspends the specified scaling process for the specified
# Auto Scaling group.
\donttest{svc$suspend_processes(
  AutoScalingGroupName = "my-auto-scaling-group",
  ScalingProcesses = list(
    "AlarmNotification"
  )
)}

}
\keyword{internal}
