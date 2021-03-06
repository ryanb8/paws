% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appstream_operations.R
\name{appstream_update_stack}
\alias{appstream_update_stack}
\title{Updates the specified fields for the specified stack}
\usage{
appstream_update_stack(DisplayName, Description, Name,
  StorageConnectors, DeleteStorageConnectors, RedirectURL, FeedbackURL,
  AttributesToDelete, UserSettings, ApplicationSettings, AccessEndpoints,
  EmbedHostDomains)
}
\arguments{
\item{DisplayName}{The stack name to display.}

\item{Description}{The description to display.}

\item{Name}{[required] The name of the stack.}

\item{StorageConnectors}{The storage connectors to enable.}

\item{DeleteStorageConnectors}{Deletes the storage connectors currently enabled for the stack.}

\item{RedirectURL}{The URL that users are redirected to after their streaming session ends.}

\item{FeedbackURL}{The URL that users are redirected to after they choose the Send Feedback
link. If no URL is specified, no Send Feedback link is displayed.}

\item{AttributesToDelete}{The stack attributes to delete.}

\item{UserSettings}{The actions that are enabled or disabled for users during their
streaming sessions. By default, these actions are enabled.}

\item{ApplicationSettings}{The persistent application settings for users of a stack. When these
settings are enabled, changes that users make to applications and
Windows settings are automatically saved after each session and applied
to the next session.}

\item{AccessEndpoints}{The list of interface VPC endpoint (interface endpoint) objects. Users
of the stack can connect to AppStream 2.0 only through the specified
endpoints.}

\item{EmbedHostDomains}{The domains where AppStream 2.0 streaming sessions can be embedded in an
iframe. You must approve the domains that you want to host embedded
AppStream 2.0 streaming sessions.}
}
\description{
Updates the specified fields for the specified stack.
}
\section{Request syntax}{
\preformatted{svc$update_stack(
  DisplayName = "string",
  Description = "string",
  Name = "string",
  StorageConnectors = list(
    list(
      ConnectorType = "HOMEFOLDERS"|"GOOGLE_DRIVE"|"ONE_DRIVE",
      ResourceIdentifier = "string",
      Domains = list(
        "string"
      )
    )
  ),
  DeleteStorageConnectors = TRUE|FALSE,
  RedirectURL = "string",
  FeedbackURL = "string",
  AttributesToDelete = list(
    "STORAGE_CONNECTORS"|"STORAGE_CONNECTOR_HOMEFOLDERS"|"STORAGE_CONNECTOR_GOOGLE_DRIVE"|"STORAGE_CONNECTOR_ONE_DRIVE"|"REDIRECT_URL"|"FEEDBACK_URL"|"THEME_NAME"|"USER_SETTINGS"|"EMBED_HOST_DOMAINS"|"IAM_ROLE_ARN"|"ACCESS_ENDPOINTS"
  ),
  UserSettings = list(
    list(
      Action = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"|"CLIPBOARD_COPY_TO_LOCAL_DEVICE"|"FILE_UPLOAD"|"FILE_DOWNLOAD"|"PRINTING_TO_LOCAL_DEVICE",
      Permission = "ENABLED"|"DISABLED"
    )
  ),
  ApplicationSettings = list(
    Enabled = TRUE|FALSE,
    SettingsGroup = "string"
  ),
  AccessEndpoints = list(
    list(
      EndpointType = "STREAMING",
      VpceId = "string"
    )
  ),
  EmbedHostDomains = list(
    "string"
  )
)
}
}

\keyword{internal}
