% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/migrationhubconfig_service.R
\name{migrationhubconfig}
\alias{migrationhubconfig}
\title{AWS Migration Hub Config}
\usage{
migrationhubconfig(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
The AWS Migration Hub home region APIs are available specifically for
working with your Migration Hub home region. You can use these APIs to
determine a home region, as well as to create and work with controls
that describe the home region.

You can use these APIs within your home region only. If you call these
APIs from outside your home region, your calls are rejected, except for
the ability to register your agents and connectors.

You must call \code{GetHomeRegion} at least once before you call any other
AWS Application Discovery Service and AWS Migration Hub APIs, to obtain
the account\'s Migration Hub home region.

The \code{StartDataCollection} API call in AWS Application Discovery Service
allows your agents and connectors to begin collecting data that flows
directly into the home region, and it will prevent you from enabling
data collection information to be sent outside the home region.

For specific API usage, see the sections that follow in this AWS
Migration Hub Home Region API reference.

The Migration Hub Home Region APIs do not support AWS Organizations.
}
\section{Service syntax}{
\preformatted{svc <- migrationhubconfig(
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
\link[=migrationhubconfig_create_home_region_control]{create_home_region_control} \tab This API sets up the home region for the calling account only \cr
\link[=migrationhubconfig_describe_home_region_controls]{describe_home_region_controls} \tab This API permits filtering on the ControlId, HomeRegion, and RegionControlScope fields\cr
\link[=migrationhubconfig_get_home_region]{get_home_region} \tab Returns the calling account’s home region, if configured
}
}

\examples{
\donttest{svc <- migrationhubconfig()
svc$create_home_region_control(
  Foo = 123
)}

}
