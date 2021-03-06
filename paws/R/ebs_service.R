# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' Amazon Elastic Block Store
#'
#' @description
#' You can use the Amazon Elastic Block Store (EBS) direct APIs to directly
#' read the data on your EBS snapshots, and identify the difference between
#' two snapshots. You can view the details of blocks in an EBS snapshot,
#' compare the block difference between two snapshots, and directly access
#' the data in a snapshot. If you're an independent software vendor (ISV)
#' who offers backup services for EBS, the EBS direct APIs makes it easier
#' and more cost-effective to track incremental changes on your EBS volumes
#' via EBS snapshots. This can be done without having to create new volumes
#' from EBS snapshots, and then use EC2 instances to compare the
#' differences.
#' 
#' This API reference provides detailed information about the actions, data
#' types, parameters, and errors of the EBS direct APIs. For more
#' information about the elements that make up the EBS direct APIs, and
#' examples of how to use them effectively, see [Accessing the Contents of
#' an EBS
#' Snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html).
#' For more information about how to use the EBS direct APIs, see the [EBS
#' direct APIs User
#' Guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshots.html).
#' To view the currently supported AWS Regions and endpoints for the EBS
#' direct APIs, see [AWS Service
#' Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#ebs_region)
#' in the *AWS General Reference*.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- ebs(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string"
#'     ),
#'     endpoint = "string",
#'     region = "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \donttest{svc <- ebs()
#' svc$get_snapshot_block(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ebs_get_snapshot_block]{get_snapshot_block} \tab Returns the data in a block in an Amazon Elastic Block Store snapshot \cr
#'  \link[=ebs_list_changed_blocks]{list_changed_blocks} \tab Returns the block indexes and block tokens for blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage\cr
#'  \link[=ebs_list_snapshot_blocks]{list_snapshot_blocks} \tab Returns the block indexes and block tokens for blocks in an Amazon Elastic Block Store snapshot 
#' }
#'
#' @rdname ebs
#' @export
ebs <- function(config = list()) {
  svc <- .ebs$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.ebs <- list()

.ebs$operations <- list()

.ebs$metadata <- list(
  service_name = "ebs",
  endpoints = list("*" = list(endpoint = "ebs.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "ebs.{region}.amazonaws.com.cn", global = FALSE)),
  service_id = "EBS",
  api_version = "2019-11-02",
  signing_name = NULL,
  json_version = "1.1",
  target_prefix = ""
)

.ebs$handlers <- new_handlers("restjson", "v4")

.ebs$service <- function(config = list()) {
  new_service(.ebs$metadata, .ebs$handlers, config)
}
