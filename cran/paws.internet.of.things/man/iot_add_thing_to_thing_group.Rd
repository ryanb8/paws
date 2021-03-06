% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_add_thing_to_thing_group}
\alias{iot_add_thing_to_thing_group}
\title{Adds a thing to a thing group}
\usage{
iot_add_thing_to_thing_group(thingGroupName, thingGroupArn, thingName,
  thingArn, overrideDynamicGroups)
}
\arguments{
\item{thingGroupName}{The name of the group to which you are adding a thing.}

\item{thingGroupArn}{The ARN of the group to which you are adding a thing.}

\item{thingName}{The name of the thing to add to a group.}

\item{thingArn}{The ARN of the thing to add to a group.}

\item{overrideDynamicGroups}{Override dynamic thing groups with static thing groups when 10-group
limit is reached. If a thing belongs to 10 thing groups, and one or more
of those groups are dynamic thing groups, adding a thing to a static
group removes the thing from the last dynamic group.}
}
\description{
Adds a thing to a thing group.
}
\section{Request syntax}{
\preformatted{svc$add_thing_to_thing_group(
  thingGroupName = "string",
  thingGroupArn = "string",
  thingName = "string",
  thingArn = "string",
  overrideDynamicGroups = TRUE|FALSE
)
}
}

\keyword{internal}
