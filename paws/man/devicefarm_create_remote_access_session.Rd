% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_create_remote_access_session}
\alias{devicefarm_create_remote_access_session}
\title{Specifies and starts a remote access session}
\usage{
devicefarm_create_remote_access_session(projectArn, deviceArn,
  instanceArn, sshPublicKey, remoteDebugEnabled, remoteRecordEnabled,
  remoteRecordAppArn, name, clientId, configuration, interactionMode,
  skipAppResign)
}
\arguments{
\item{projectArn}{[required] The Amazon Resource Name (ARN) of the project for which you want to
create a remote access session.}

\item{deviceArn}{[required] The ARN of the device for which you want to create a remote access
session.}

\item{instanceArn}{The Amazon Resource Name (ARN) of the device instance for which you want
to create a remote access session.}

\item{sshPublicKey}{Ignored. The public key of the \code{ssh} key pair you want to use for
connecting to remote devices in your remote debugging session. This key
is required only if \code{remoteDebugEnabled} is set to \code{true}.

Remote debugging is \href{https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html}{no longer supported}.}

\item{remoteDebugEnabled}{Set to \code{true} if you want to access devices remotely for debugging in
your remote access session.

Remote debugging is \href{https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html}{no longer supported}.}

\item{remoteRecordEnabled}{Set to \code{true} to enable remote recording for the remote access session.}

\item{remoteRecordAppArn}{The Amazon Resource Name (ARN) for the app to be recorded in the remote
access session.}

\item{name}{The name of the remote access session to create.}

\item{clientId}{Unique identifier for the client. If you want access to multiple devices
on the same client, you should pass the same \code{clientId} value in each
call to \code{CreateRemoteAccessSession}. This identifier is required only if
\code{remoteDebugEnabled} is set to \code{true}.

Remote debugging is \href{https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html}{no longer supported}.}

\item{configuration}{The configuration information for the remote access session request.}

\item{interactionMode}{The interaction mode of the remote access session. Valid values are:
\itemize{
\item INTERACTIVE: You can interact with the iOS device by viewing,
touching, and rotating the screen. You cannot run XCUITest
framework-based tests in this mode.
\item NO\\_VIDEO: You are connected to the device, but cannot interact with
it or view the screen. This mode has the fastest test execution
speed. You can run XCUITest framework-based tests in this mode.
\item VIDEO\\_ONLY: You can view the screen, but cannot touch or rotate it.
You can run XCUITest framework-based tests and watch the screen in
this mode.
}}

\item{skipAppResign}{When set to \code{true}, for private devices, Device Farm does not sign your
app again. For public devices, Device Farm always signs your apps again.

For more information on how Device Farm modifies your uploads during
tests, see \href{https://aws.amazon.com/device-farm/faq/}{Do you modify my app?}}
}
\description{
Specifies and starts a remote access session.
}
\section{Request syntax}{
\preformatted{svc$create_remote_access_session(
  projectArn = "string",
  deviceArn = "string",
  instanceArn = "string",
  sshPublicKey = "string",
  remoteDebugEnabled = TRUE|FALSE,
  remoteRecordEnabled = TRUE|FALSE,
  remoteRecordAppArn = "string",
  name = "string",
  clientId = "string",
  configuration = list(
    billingMethod = "METERED"|"UNMETERED",
    vpceConfigurationArns = list(
      "string"
    )
  ),
  interactionMode = "INTERACTIVE"|"NO_VIDEO"|"VIDEO_ONLY",
  skipAppResign = TRUE|FALSE
)
}
}

\examples{
# The following example creates a remote access session named MySession.
\donttest{svc$create_remote_access_session(
  name = "MySession",
  configuration = list(
    billingMethod = "METERED"
  ),
  deviceArn = "arn:aws:devicefarm:us-west-2::device:123EXAMPLE",
  projectArn = "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
)}

}
\keyword{internal}
