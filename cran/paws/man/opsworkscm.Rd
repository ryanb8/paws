% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{opsworkscm}
\alias{opsworkscm}
\title{AWS OpsWorks CM}
\usage{
opsworkscm(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
AWS OpsWorks for configuration management (CM) is a service that runs
and manages configuration management servers. You can use AWS OpsWorks
CM to create and manage AWS OpsWorks for Chef Automate and AWS OpsWorks
for Puppet Enterprise servers, and add or remove nodes for the servers
to manage.

\strong{Glossary of terms}
\itemize{
\item \strong{Server}: A configuration management server that can be
highly-available. The configuration management server runs on an
Amazon Elastic Compute Cloud (EC2) instance, and may use various
other AWS services, such as Amazon Relational Database Service (RDS)
and Elastic Load Balancing. A server is a generic abstraction over
the configuration manager that you want to use, much like Amazon
RDS. In AWS OpsWorks CM, you do not start or stop servers. After you
create servers, they continue to run until they are deleted.
\item \strong{Engine}: The engine is the specific configuration manager that
you want to use. Valid values in this release include \code{ChefAutomate}
and \code{Puppet}.
\item \strong{Backup}: This is an application-level backup of the data that the
configuration manager stores. AWS OpsWorks CM creates an S3 bucket
for backups when you launch the first server. A backup maintains a
snapshot of a server\'s configuration-related attributes at the time
the backup starts.
\item \strong{Events}: Events are always related to a server. Events are
written during server creation, when health checks run, when backups
are created, when system maintenance is performed, etc. When you
delete a server, the server\'s events are also deleted.
\item \strong{Account attributes}: Every account has attributes that are
assigned in the AWS OpsWorks CM database. These attributes store
information about configuration limits (servers, backups, etc.) and
your customer account.
}

\strong{Endpoints}

AWS OpsWorks CM supports the following endpoints, all HTTPS. You must
connect to one of the following endpoints. Your servers can only be
accessed or managed within the endpoint in which they are created.
\itemize{
\item opsworks-cm.us-east-1.amazonaws.com
\item opsworks-cm.us-east-2.amazonaws.com
\item opsworks-cm.us-west-1.amazonaws.com
\item opsworks-cm.us-west-2.amazonaws.com
\item opsworks-cm.ap-northeast-1.amazonaws.com
\item opsworks-cm.ap-southeast-1.amazonaws.com
\item opsworks-cm.ap-southeast-2.amazonaws.com
\item opsworks-cm.eu-central-1.amazonaws.com
\item opsworks-cm.eu-west-1.amazonaws.com
}

\strong{Throttling limits}

All API operations allow for five requests per second with a burst of 10
requests per second.
}
\section{Service syntax}{
\preformatted{svc <- opsworkscm(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string"
    ),
    endpoint = "string",
    region = "string"
  )
)
}
}

\section{Operations}{

\tabular{ll}{
\link[=opsworkscm_associate_node]{associate_node} \tab Associates a new node with the server \cr
\link[=opsworkscm_create_backup]{create_backup} \tab Creates an application-level backup of a server \cr
\link[=opsworkscm_create_server]{create_server} \tab Creates and immedately starts a new server \cr
\link[=opsworkscm_delete_backup]{delete_backup} \tab Deletes a backup \cr
\link[=opsworkscm_delete_server]{delete_server} \tab Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance) \cr
\link[=opsworkscm_describe_account_attributes]{describe_account_attributes} \tab Describes your OpsWorks-CM account attributes \cr
\link[=opsworkscm_describe_backups]{describe_backups} \tab Describes backups \cr
\link[=opsworkscm_describe_events]{describe_events} \tab Describes events for a specified server \cr
\link[=opsworkscm_describe_node_association_status]{describe_node_association_status} \tab Returns the current status of an existing association or disassociation request \cr
\link[=opsworkscm_describe_servers]{describe_servers} \tab Lists all configuration management servers that are identified with your account \cr
\link[=opsworkscm_disassociate_node]{disassociate_node} \tab Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes \cr
\link[=opsworkscm_export_server_engine_attribute]{export_server_engine_attribute} \tab Exports a specified server engine attribute as a base64-encoded string \cr
\link[=opsworkscm_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of tags that are applied to the specified AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise servers or backups\cr
\link[=opsworkscm_restore_server]{restore_server} \tab Restores a backup to a server that is in a CONNECTION_LOST, HEALTHY, RUNNING, UNHEALTHY, or TERMINATED state \cr
\link[=opsworkscm_start_maintenance]{start_maintenance} \tab Manually starts server maintenance \cr
\link[=opsworkscm_tag_resource]{tag_resource} \tab Applies tags to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server, or to server backups \cr
\link[=opsworkscm_untag_resource]{untag_resource} \tab Removes specified tags from an AWS OpsWorks-CM server or backup \cr
\link[=opsworkscm_update_server]{update_server} \tab Updates settings for a server \cr
\link[=opsworkscm_update_server_engine_attributes]{update_server_engine_attributes} \tab Updates engine-specific attributes on a specified server
}
}

\examples{
\donttest{svc <- opsworkscm()
svc$associate_node(
  Foo = 123
)}

}
