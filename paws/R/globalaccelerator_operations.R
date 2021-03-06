# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include globalaccelerator_service.R
NULL

#' Create an accelerator
#'
#' Create an accelerator. An accelerator includes one or more listeners
#' that process inbound connections and direct traffic to one or more
#' endpoint groups, each of which includes endpoints, such as Network Load
#' Balancers. To see an AWS CLI example of creating an accelerator, scroll
#' down to **Example**.
#' 
#' You must specify the US-West-2 (Oregon) Region to create or update
#' accelerators.
#'
#' @usage
#' globalaccelerator_create_accelerator(Name, IpAddressType, Enabled,
#'   IdempotencyToken)
#'
#' @param Name &#91;required&#93; The name of an accelerator. The name can have a maximum of 32
#' characters, must contain only alphanumeric characters or hyphens (-),
#' and must not begin or end with a hyphen.
#' @param IpAddressType The value for the address type must be IPv4.
#' @param Enabled Indicates whether an accelerator is enabled. The value is true or false.
#' The default value is true.
#' 
#' If the value is set to true, an accelerator cannot be deleted. If set to
#' false, the accelerator can be deleted.
#' @param IdempotencyToken &#91;required&#93; A unique, case-sensitive identifier that you provide to ensure the
#' idempotency---that is, the uniqueness---of an accelerator.
#'
#' @section Request syntax:
#' ```
#' svc$create_accelerator(
#'   Name = "string",
#'   IpAddressType = "IPV4",
#'   Enabled = TRUE|FALSE,
#'   IdempotencyToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_create_accelerator
globalaccelerator_create_accelerator <- function(Name, IpAddressType = NULL, Enabled = NULL, IdempotencyToken) {
  op <- new_operation(
    name = "CreateAccelerator",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$create_accelerator_input(Name = Name, IpAddressType = IpAddressType, Enabled = Enabled, IdempotencyToken = IdempotencyToken)
  output <- .globalaccelerator$create_accelerator_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$create_accelerator <- globalaccelerator_create_accelerator

#' Create an endpoint group for the specified listener
#'
#' Create an endpoint group for the specified listener. An endpoint group
#' is a collection of endpoints in one AWS Region. To see an AWS CLI
#' example of creating an endpoint group, scroll down to **Example**.
#'
#' @usage
#' globalaccelerator_create_endpoint_group(ListenerArn,
#'   EndpointGroupRegion, EndpointConfigurations, TrafficDialPercentage,
#'   HealthCheckPort, HealthCheckProtocol, HealthCheckPath,
#'   HealthCheckIntervalSeconds, ThresholdCount, IdempotencyToken)
#'
#' @param ListenerArn &#91;required&#93; The Amazon Resource Name (ARN) of the listener.
#' @param EndpointGroupRegion &#91;required&#93; The name of the AWS Region where the endpoint group is located. A
#' listener can have only one endpoint group in a specific Region.
#' @param EndpointConfigurations The list of endpoint objects.
#' @param TrafficDialPercentage The percentage of traffic to send to an AWS Region. Additional traffic
#' is distributed to other endpoint groups for this listener.
#' 
#' Use this action to increase (dial up) or decrease (dial down) traffic to
#' a specific Region. The percentage is applied to the traffic that would
#' otherwise have been routed to the Region based on optimal routing.
#' 
#' The default value is 100.
#' @param HealthCheckPort The port that AWS Global Accelerator uses to check the health of
#' endpoints that are part of this endpoint group. The default port is the
#' listener port that this endpoint group is associated with. If listener
#' port is a list of ports, Global Accelerator uses the first port in the
#' list.
#' @param HealthCheckProtocol The protocol that AWS Global Accelerator uses to check the health of
#' endpoints that are part of this endpoint group. The default value is
#' TCP.
#' @param HealthCheckPath If the protocol is HTTP/S, then this specifies the path that is the
#' destination for health check targets. The default value is slash (/).
#' @param HealthCheckIntervalSeconds The time---10 seconds or 30 seconds---between each health check for an
#' endpoint. The default value is 30.
#' @param ThresholdCount The number of consecutive health checks required to set the state of a
#' healthy endpoint to unhealthy, or to set an unhealthy endpoint to
#' healthy. The default value is 3.
#' @param IdempotencyToken &#91;required&#93; A unique, case-sensitive identifier that you provide to ensure the
#' idempotency---that is, the uniqueness---of the request.
#'
#' @section Request syntax:
#' ```
#' svc$create_endpoint_group(
#'   ListenerArn = "string",
#'   EndpointGroupRegion = "string",
#'   EndpointConfigurations = list(
#'     list(
#'       EndpointId = "string",
#'       Weight = 123,
#'       ClientIPPreservationEnabled = TRUE|FALSE
#'     )
#'   ),
#'   TrafficDialPercentage = 123.0,
#'   HealthCheckPort = 123,
#'   HealthCheckProtocol = "TCP"|"HTTP"|"HTTPS",
#'   HealthCheckPath = "string",
#'   HealthCheckIntervalSeconds = 123,
#'   ThresholdCount = 123,
#'   IdempotencyToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_create_endpoint_group
globalaccelerator_create_endpoint_group <- function(ListenerArn, EndpointGroupRegion, EndpointConfigurations = NULL, TrafficDialPercentage = NULL, HealthCheckPort = NULL, HealthCheckProtocol = NULL, HealthCheckPath = NULL, HealthCheckIntervalSeconds = NULL, ThresholdCount = NULL, IdempotencyToken) {
  op <- new_operation(
    name = "CreateEndpointGroup",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$create_endpoint_group_input(ListenerArn = ListenerArn, EndpointGroupRegion = EndpointGroupRegion, EndpointConfigurations = EndpointConfigurations, TrafficDialPercentage = TrafficDialPercentage, HealthCheckPort = HealthCheckPort, HealthCheckProtocol = HealthCheckProtocol, HealthCheckPath = HealthCheckPath, HealthCheckIntervalSeconds = HealthCheckIntervalSeconds, ThresholdCount = ThresholdCount, IdempotencyToken = IdempotencyToken)
  output <- .globalaccelerator$create_endpoint_group_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$create_endpoint_group <- globalaccelerator_create_endpoint_group

#' Create a listener to process inbound connections from clients to an
#' accelerator
#'
#' Create a listener to process inbound connections from clients to an
#' accelerator. Connections arrive to assigned static IP addresses on a
#' port, port range, or list of port ranges that you specify. To see an AWS
#' CLI example of creating a listener, scroll down to **Example**.
#'
#' @usage
#' globalaccelerator_create_listener(AcceleratorArn, PortRanges, Protocol,
#'   ClientAffinity, IdempotencyToken)
#'
#' @param AcceleratorArn &#91;required&#93; The Amazon Resource Name (ARN) of your accelerator.
#' @param PortRanges &#91;required&#93; The list of port ranges to support for connections from clients to your
#' accelerator.
#' @param Protocol &#91;required&#93; The protocol for connections from clients to your accelerator.
#' @param ClientAffinity Client affinity lets you direct all requests from a user to the same
#' endpoint, if you have stateful applications, regardless of the port and
#' protocol of the client request. Clienty affinity gives you control over
#' whether to always route each client to the same specific endpoint.
#' 
#' AWS Global Accelerator uses a consistent-flow hashing algorithm to
#' choose the optimal endpoint for a connection. If client affinity is
#' `NONE`, Global Accelerator uses the \"five-tuple\" (5-tuple)
#' properties---source IP address, source port, destination IP address,
#' destination port, and protocol---to select the hash value, and then
#' chooses the best endpoint. However, with this setting, if someone uses
#' different ports to connect to Global Accelerator, their connections
#' might not be always routed to the same endpoint because the hash value
#' changes.
#' 
#' If you want a given client to always be routed to the same endpoint, set
#' client affinity to `SOURCE_IP` instead. When you use the `SOURCE_IP`
#' setting, Global Accelerator uses the \"two-tuple\" (2-tuple)
#' properties--- source (client) IP address and destination IP address---to
#' select the hash value.
#' 
#' The default value is `NONE`.
#' @param IdempotencyToken &#91;required&#93; A unique, case-sensitive identifier that you provide to ensure the
#' idempotency---that is, the uniqueness---of the request.
#'
#' @section Request syntax:
#' ```
#' svc$create_listener(
#'   AcceleratorArn = "string",
#'   PortRanges = list(
#'     list(
#'       FromPort = 123,
#'       ToPort = 123
#'     )
#'   ),
#'   Protocol = "TCP"|"UDP",
#'   ClientAffinity = "NONE"|"SOURCE_IP",
#'   IdempotencyToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_create_listener
globalaccelerator_create_listener <- function(AcceleratorArn, PortRanges, Protocol, ClientAffinity = NULL, IdempotencyToken) {
  op <- new_operation(
    name = "CreateListener",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$create_listener_input(AcceleratorArn = AcceleratorArn, PortRanges = PortRanges, Protocol = Protocol, ClientAffinity = ClientAffinity, IdempotencyToken = IdempotencyToken)
  output <- .globalaccelerator$create_listener_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$create_listener <- globalaccelerator_create_listener

#' Delete an accelerator
#'
#' Delete an accelerator. Note: before you can delete an accelerator, you
#' must disable it and remove all dependent resources (listeners and
#' endpoint groups).
#'
#' @usage
#' globalaccelerator_delete_accelerator(AcceleratorArn)
#'
#' @param AcceleratorArn &#91;required&#93; The Amazon Resource Name (ARN) of an accelerator.
#'
#' @section Request syntax:
#' ```
#' svc$delete_accelerator(
#'   AcceleratorArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_delete_accelerator
globalaccelerator_delete_accelerator <- function(AcceleratorArn) {
  op <- new_operation(
    name = "DeleteAccelerator",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$delete_accelerator_input(AcceleratorArn = AcceleratorArn)
  output <- .globalaccelerator$delete_accelerator_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$delete_accelerator <- globalaccelerator_delete_accelerator

#' Delete an endpoint group from a listener
#'
#' Delete an endpoint group from a listener.
#'
#' @usage
#' globalaccelerator_delete_endpoint_group(EndpointGroupArn)
#'
#' @param EndpointGroupArn &#91;required&#93; The Amazon Resource Name (ARN) of the endpoint group to delete.
#'
#' @section Request syntax:
#' ```
#' svc$delete_endpoint_group(
#'   EndpointGroupArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_delete_endpoint_group
globalaccelerator_delete_endpoint_group <- function(EndpointGroupArn) {
  op <- new_operation(
    name = "DeleteEndpointGroup",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$delete_endpoint_group_input(EndpointGroupArn = EndpointGroupArn)
  output <- .globalaccelerator$delete_endpoint_group_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$delete_endpoint_group <- globalaccelerator_delete_endpoint_group

#' Delete a listener from an accelerator
#'
#' Delete a listener from an accelerator.
#'
#' @usage
#' globalaccelerator_delete_listener(ListenerArn)
#'
#' @param ListenerArn &#91;required&#93; The Amazon Resource Name (ARN) of the listener.
#'
#' @section Request syntax:
#' ```
#' svc$delete_listener(
#'   ListenerArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_delete_listener
globalaccelerator_delete_listener <- function(ListenerArn) {
  op <- new_operation(
    name = "DeleteListener",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$delete_listener_input(ListenerArn = ListenerArn)
  output <- .globalaccelerator$delete_listener_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$delete_listener <- globalaccelerator_delete_listener

#' Describe an accelerator
#'
#' Describe an accelerator. To see an AWS CLI example of describing an
#' accelerator, scroll down to **Example**.
#'
#' @usage
#' globalaccelerator_describe_accelerator(AcceleratorArn)
#'
#' @param AcceleratorArn &#91;required&#93; The Amazon Resource Name (ARN) of the accelerator to describe.
#'
#' @section Request syntax:
#' ```
#' svc$describe_accelerator(
#'   AcceleratorArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_describe_accelerator
globalaccelerator_describe_accelerator <- function(AcceleratorArn) {
  op <- new_operation(
    name = "DescribeAccelerator",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$describe_accelerator_input(AcceleratorArn = AcceleratorArn)
  output <- .globalaccelerator$describe_accelerator_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$describe_accelerator <- globalaccelerator_describe_accelerator

#' Describe the attributes of an accelerator
#'
#' Describe the attributes of an accelerator.
#'
#' @usage
#' globalaccelerator_describe_accelerator_attributes(AcceleratorArn)
#'
#' @param AcceleratorArn &#91;required&#93; The Amazon Resource Name (ARN) of the accelerator with the attributes
#' that you want to describe.
#'
#' @section Request syntax:
#' ```
#' svc$describe_accelerator_attributes(
#'   AcceleratorArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_describe_accelerator_attributes
globalaccelerator_describe_accelerator_attributes <- function(AcceleratorArn) {
  op <- new_operation(
    name = "DescribeAcceleratorAttributes",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$describe_accelerator_attributes_input(AcceleratorArn = AcceleratorArn)
  output <- .globalaccelerator$describe_accelerator_attributes_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$describe_accelerator_attributes <- globalaccelerator_describe_accelerator_attributes

#' Describe an endpoint group
#'
#' Describe an endpoint group.
#'
#' @usage
#' globalaccelerator_describe_endpoint_group(EndpointGroupArn)
#'
#' @param EndpointGroupArn &#91;required&#93; The Amazon Resource Name (ARN) of the endpoint group to describe.
#'
#' @section Request syntax:
#' ```
#' svc$describe_endpoint_group(
#'   EndpointGroupArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_describe_endpoint_group
globalaccelerator_describe_endpoint_group <- function(EndpointGroupArn) {
  op <- new_operation(
    name = "DescribeEndpointGroup",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$describe_endpoint_group_input(EndpointGroupArn = EndpointGroupArn)
  output <- .globalaccelerator$describe_endpoint_group_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$describe_endpoint_group <- globalaccelerator_describe_endpoint_group

#' Describe a listener
#'
#' Describe a listener.
#'
#' @usage
#' globalaccelerator_describe_listener(ListenerArn)
#'
#' @param ListenerArn &#91;required&#93; The Amazon Resource Name (ARN) of the listener to describe.
#'
#' @section Request syntax:
#' ```
#' svc$describe_listener(
#'   ListenerArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_describe_listener
globalaccelerator_describe_listener <- function(ListenerArn) {
  op <- new_operation(
    name = "DescribeListener",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$describe_listener_input(ListenerArn = ListenerArn)
  output <- .globalaccelerator$describe_listener_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$describe_listener <- globalaccelerator_describe_listener

#' List the accelerators for an AWS account
#'
#' List the accelerators for an AWS account.
#'
#' @usage
#' globalaccelerator_list_accelerators(MaxResults, NextToken)
#'
#' @param MaxResults The number of Global Accelerator objects that you want to return with
#' this call. The default value is 10.
#' @param NextToken The token for the next set of results. You receive this token from a
#' previous call.
#'
#' @section Request syntax:
#' ```
#' svc$list_accelerators(
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_list_accelerators
globalaccelerator_list_accelerators <- function(MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListAccelerators",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$list_accelerators_input(MaxResults = MaxResults, NextToken = NextToken)
  output <- .globalaccelerator$list_accelerators_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$list_accelerators <- globalaccelerator_list_accelerators

#' List the endpoint groups that are associated with a listener
#'
#' List the endpoint groups that are associated with a listener.
#'
#' @usage
#' globalaccelerator_list_endpoint_groups(ListenerArn, MaxResults,
#'   NextToken)
#'
#' @param ListenerArn &#91;required&#93; The Amazon Resource Name (ARN) of the listener.
#' @param MaxResults The number of endpoint group objects that you want to return with this
#' call. The default value is 10.
#' @param NextToken The token for the next set of results. You receive this token from a
#' previous call.
#'
#' @section Request syntax:
#' ```
#' svc$list_endpoint_groups(
#'   ListenerArn = "string",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_list_endpoint_groups
globalaccelerator_list_endpoint_groups <- function(ListenerArn, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListEndpointGroups",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$list_endpoint_groups_input(ListenerArn = ListenerArn, MaxResults = MaxResults, NextToken = NextToken)
  output <- .globalaccelerator$list_endpoint_groups_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$list_endpoint_groups <- globalaccelerator_list_endpoint_groups

#' List the listeners for an accelerator
#'
#' List the listeners for an accelerator.
#'
#' @usage
#' globalaccelerator_list_listeners(AcceleratorArn, MaxResults, NextToken)
#'
#' @param AcceleratorArn &#91;required&#93; The Amazon Resource Name (ARN) of the accelerator for which you want to
#' list listener objects.
#' @param MaxResults The number of listener objects that you want to return with this call.
#' The default value is 10.
#' @param NextToken The token for the next set of results. You receive this token from a
#' previous call.
#'
#' @section Request syntax:
#' ```
#' svc$list_listeners(
#'   AcceleratorArn = "string",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_list_listeners
globalaccelerator_list_listeners <- function(AcceleratorArn, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListListeners",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$list_listeners_input(AcceleratorArn = AcceleratorArn, MaxResults = MaxResults, NextToken = NextToken)
  output <- .globalaccelerator$list_listeners_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$list_listeners <- globalaccelerator_list_listeners

#' Update an accelerator
#'
#' Update an accelerator. To see an AWS CLI example of updating an
#' accelerator, scroll down to **Example**.
#' 
#' You must specify the US-West-2 (Oregon) Region to create or update
#' accelerators.
#'
#' @usage
#' globalaccelerator_update_accelerator(AcceleratorArn, Name,
#'   IpAddressType, Enabled)
#'
#' @param AcceleratorArn &#91;required&#93; The Amazon Resource Name (ARN) of the accelerator to update.
#' @param Name The name of the accelerator. The name can have a maximum of 32
#' characters, must contain only alphanumeric characters or hyphens (-),
#' and must not begin or end with a hyphen.
#' @param IpAddressType The value for the address type must be IPv4.
#' @param Enabled Indicates whether an accelerator is enabled. The value is true or false.
#' The default value is true.
#' 
#' If the value is set to true, the accelerator cannot be deleted. If set
#' to false, the accelerator can be deleted.
#'
#' @section Request syntax:
#' ```
#' svc$update_accelerator(
#'   AcceleratorArn = "string",
#'   Name = "string",
#'   IpAddressType = "IPV4",
#'   Enabled = TRUE|FALSE
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_update_accelerator
globalaccelerator_update_accelerator <- function(AcceleratorArn, Name = NULL, IpAddressType = NULL, Enabled = NULL) {
  op <- new_operation(
    name = "UpdateAccelerator",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$update_accelerator_input(AcceleratorArn = AcceleratorArn, Name = Name, IpAddressType = IpAddressType, Enabled = Enabled)
  output <- .globalaccelerator$update_accelerator_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$update_accelerator <- globalaccelerator_update_accelerator

#' Update the attributes for an accelerator
#'
#' Update the attributes for an accelerator. To see an AWS CLI example of
#' updating an accelerator to enable flow logs, scroll down to **Example**.
#'
#' @usage
#' globalaccelerator_update_accelerator_attributes(AcceleratorArn,
#'   FlowLogsEnabled, FlowLogsS3Bucket, FlowLogsS3Prefix)
#'
#' @param AcceleratorArn &#91;required&#93; The Amazon Resource Name (ARN) of the accelerator that you want to
#' update.
#' @param FlowLogsEnabled Update whether flow logs are enabled. The default value is false. If the
#' value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must be
#' specified.
#' 
#' For more information, see [Flow
#' Logs](https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html)
#' in the *AWS Global Accelerator Developer Guide*.
#' @param FlowLogsS3Bucket The name of the Amazon S3 bucket for the flow logs. Attribute is
#' required if `FlowLogsEnabled` is `true`. The bucket must exist and have
#' a bucket policy that grants AWS Global Accelerator permission to write
#' to the bucket.
#' @param FlowLogsS3Prefix Update the prefix for the location in the Amazon S3 bucket for the flow
#' logs. Attribute is required if `FlowLogsEnabled` is `true`. If you don't
#' specify a prefix, the flow logs are stored in the root of the bucket.
#'
#' @section Request syntax:
#' ```
#' svc$update_accelerator_attributes(
#'   AcceleratorArn = "string",
#'   FlowLogsEnabled = TRUE|FALSE,
#'   FlowLogsS3Bucket = "string",
#'   FlowLogsS3Prefix = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_update_accelerator_attributes
globalaccelerator_update_accelerator_attributes <- function(AcceleratorArn, FlowLogsEnabled = NULL, FlowLogsS3Bucket = NULL, FlowLogsS3Prefix = NULL) {
  op <- new_operation(
    name = "UpdateAcceleratorAttributes",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$update_accelerator_attributes_input(AcceleratorArn = AcceleratorArn, FlowLogsEnabled = FlowLogsEnabled, FlowLogsS3Bucket = FlowLogsS3Bucket, FlowLogsS3Prefix = FlowLogsS3Prefix)
  output <- .globalaccelerator$update_accelerator_attributes_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$update_accelerator_attributes <- globalaccelerator_update_accelerator_attributes

#' Update an endpoint group
#'
#' Update an endpoint group. To see an AWS CLI example of updating an
#' endpoint group, scroll down to **Example**.
#'
#' @usage
#' globalaccelerator_update_endpoint_group(EndpointGroupArn,
#'   EndpointConfigurations, TrafficDialPercentage, HealthCheckPort,
#'   HealthCheckProtocol, HealthCheckPath, HealthCheckIntervalSeconds,
#'   ThresholdCount)
#'
#' @param EndpointGroupArn &#91;required&#93; The Amazon Resource Name (ARN) of the endpoint group.
#' @param EndpointConfigurations The list of endpoint objects.
#' @param TrafficDialPercentage The percentage of traffic to send to an AWS Region. Additional traffic
#' is distributed to other endpoint groups for this listener.
#' 
#' Use this action to increase (dial up) or decrease (dial down) traffic to
#' a specific Region. The percentage is applied to the traffic that would
#' otherwise have been routed to the Region based on optimal routing.
#' 
#' The default value is 100.
#' @param HealthCheckPort The port that AWS Global Accelerator uses to check the health of
#' endpoints that are part of this endpoint group. The default port is the
#' listener port that this endpoint group is associated with. If the
#' listener port is a list of ports, Global Accelerator uses the first port
#' in the list.
#' @param HealthCheckProtocol The protocol that AWS Global Accelerator uses to check the health of
#' endpoints that are part of this endpoint group. The default value is
#' TCP.
#' @param HealthCheckPath If the protocol is HTTP/S, then this specifies the path that is the
#' destination for health check targets. The default value is slash (/).
#' @param HealthCheckIntervalSeconds The time---10 seconds or 30 seconds---between each health check for an
#' endpoint. The default value is 30.
#' @param ThresholdCount The number of consecutive health checks required to set the state of a
#' healthy endpoint to unhealthy, or to set an unhealthy endpoint to
#' healthy. The default value is 3.
#'
#' @section Request syntax:
#' ```
#' svc$update_endpoint_group(
#'   EndpointGroupArn = "string",
#'   EndpointConfigurations = list(
#'     list(
#'       EndpointId = "string",
#'       Weight = 123,
#'       ClientIPPreservationEnabled = TRUE|FALSE
#'     )
#'   ),
#'   TrafficDialPercentage = 123.0,
#'   HealthCheckPort = 123,
#'   HealthCheckProtocol = "TCP"|"HTTP"|"HTTPS",
#'   HealthCheckPath = "string",
#'   HealthCheckIntervalSeconds = 123,
#'   ThresholdCount = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_update_endpoint_group
globalaccelerator_update_endpoint_group <- function(EndpointGroupArn, EndpointConfigurations = NULL, TrafficDialPercentage = NULL, HealthCheckPort = NULL, HealthCheckProtocol = NULL, HealthCheckPath = NULL, HealthCheckIntervalSeconds = NULL, ThresholdCount = NULL) {
  op <- new_operation(
    name = "UpdateEndpointGroup",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$update_endpoint_group_input(EndpointGroupArn = EndpointGroupArn, EndpointConfigurations = EndpointConfigurations, TrafficDialPercentage = TrafficDialPercentage, HealthCheckPort = HealthCheckPort, HealthCheckProtocol = HealthCheckProtocol, HealthCheckPath = HealthCheckPath, HealthCheckIntervalSeconds = HealthCheckIntervalSeconds, ThresholdCount = ThresholdCount)
  output <- .globalaccelerator$update_endpoint_group_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$update_endpoint_group <- globalaccelerator_update_endpoint_group

#' Update a listener
#'
#' Update a listener.
#'
#' @usage
#' globalaccelerator_update_listener(ListenerArn, PortRanges, Protocol,
#'   ClientAffinity)
#'
#' @param ListenerArn &#91;required&#93; The Amazon Resource Name (ARN) of the listener to update.
#' @param PortRanges The updated list of port ranges for the connections from clients to the
#' accelerator.
#' @param Protocol The updated protocol for the connections from clients to the
#' accelerator.
#' @param ClientAffinity Client affinity lets you direct all requests from a user to the same
#' endpoint, if you have stateful applications, regardless of the port and
#' protocol of the client request. Clienty affinity gives you control over
#' whether to always route each client to the same specific endpoint.
#' 
#' AWS Global Accelerator uses a consistent-flow hashing algorithm to
#' choose the optimal endpoint for a connection. If client affinity is
#' `NONE`, Global Accelerator uses the \"five-tuple\" (5-tuple)
#' properties---source IP address, source port, destination IP address,
#' destination port, and protocol---to select the hash value, and then
#' chooses the best endpoint. However, with this setting, if someone uses
#' different ports to connect to Global Accelerator, their connections
#' might not be always routed to the same endpoint because the hash value
#' changes.
#' 
#' If you want a given client to always be routed to the same endpoint, set
#' client affinity to `SOURCE_IP` instead. When you use the `SOURCE_IP`
#' setting, Global Accelerator uses the \"two-tuple\" (2-tuple)
#' properties--- source (client) IP address and destination IP address---to
#' select the hash value.
#' 
#' The default value is `NONE`.
#'
#' @section Request syntax:
#' ```
#' svc$update_listener(
#'   ListenerArn = "string",
#'   PortRanges = list(
#'     list(
#'       FromPort = 123,
#'       ToPort = 123
#'     )
#'   ),
#'   Protocol = "TCP"|"UDP",
#'   ClientAffinity = "NONE"|"SOURCE_IP"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname globalaccelerator_update_listener
globalaccelerator_update_listener <- function(ListenerArn, PortRanges = NULL, Protocol = NULL, ClientAffinity = NULL) {
  op <- new_operation(
    name = "UpdateListener",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .globalaccelerator$update_listener_input(ListenerArn = ListenerArn, PortRanges = PortRanges, Protocol = Protocol, ClientAffinity = ClientAffinity)
  output <- .globalaccelerator$update_listener_output()
  config <- get_config()
  svc <- .globalaccelerator$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.globalaccelerator$operations$update_listener <- globalaccelerator_update_listener
