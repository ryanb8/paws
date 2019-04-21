% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resourcegroupstaggingapi_service.R
\name{resourcegroupstaggingapi}
\alias{resourcegroupstaggingapi}
\title{AWS Resource Groups Tagging API}
\usage{
resourcegroupstaggingapi()
}
\description{
Resource Groups Tagging API

This guide describes the API operations for the resource groups tagging.

A tag is a label that you assign to an AWS resource. A tag consists of a
key and a value, both of which you define. For example, if you have two
Amazon EC2 instances, you might assign both a tag key of "Stack." But
the value of "Stack" might be "Testing" for one and "Production"
for the other.

Tagging can help you organize your resources and enables you to simplify
resource management, access management and cost allocation. For more
information about tagging, see \href{http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html}{Working with Tag Editor}
and \href{http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/resource-groups.html}{Working with Resource Groups}.
For more information about permissions you need to use the resource
groups tagging APIs, see \href{http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-resource-groups.html}{Obtaining Permissions for Resource Groups}
and \href{http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html}{Obtaining Permissions for Tagging}.

You can use the resource groups tagging APIs to complete the following
tasks:
\itemize{
\item Tag and untag supported resources located in the specified region
for the AWS account
\item Use tag-based filters to search for resources located in the
specified region for the AWS account
\item List all existing tag keys in the specified region for the AWS
account
\item List all existing values for the specified key in the specified
region for the AWS account
}

Not all resources can have tags. For a lists of resources that you can
tag, see \href{http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/supported-resources.html}{Supported Resources}
in the \emph{AWS Resource Groups and Tag Editor User Guide}.

To make full use of the resource groups tagging APIs, you might need
additional IAM permissions, including permission to access the resources
of individual services as well as permission to view and apply tags to
those resources. For more information, see \href{http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html}{Obtaining Permissions for Tagging}
in the \emph{AWS Resource Groups and Tag Editor User Guide}.
}
\section{Operations}{

\tabular{ll}{
\link[=resourcegroupstaggingapi_get_resources]{get_resources} \tab Returns all the tagged resources that are associated with the specified tags (keys and values) located in the specified region for the AWS account\cr
\link[=resourcegroupstaggingapi_get_tag_keys]{get_tag_keys} \tab Returns all tag keys in the specified region for the AWS account \cr
\link[=resourcegroupstaggingapi_get_tag_values]{get_tag_values} \tab Returns all tag values for the specified key in the specified region for the AWS account \cr
\link[=resourcegroupstaggingapi_tag_resources]{tag_resources} \tab Applies one or more tags to the specified resources \cr
\link[=resourcegroupstaggingapi_untag_resources]{untag_resources} \tab Removes the specified tags from the specified resources
}
}

\examples{
\donttest{svc <- resourcegroupstaggingapi()
svc$get_resources(
  Foo = 123
)}

}