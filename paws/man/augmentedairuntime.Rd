% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/augmentedairuntime_service.R
\name{augmentedairuntime}
\alias{augmentedairuntime}
\title{Amazon Augmented AI Runtime}
\usage{
augmentedairuntime(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
Amazon Augmented AI (Augmented AI) (Preview) is a service that adds
human judgment to any machine learning application. Human reviewers can
take over when an AI application can\'t evaluate data with a high degree
of confidence.

From fraudulent bank transaction identification to document processing
to image analysis, machine learning models can be trained to make
decisions as well as or better than a human. Nevertheless, some
decisions require contextual interpretation, such as when you need to
decide whether an image is appropriate for a given audience. Content
moderation guidelines are nuanced and highly dependent on context, and
they vary between countries. When trying to apply AI in these
situations, you can be forced to choose between \"ML only\" systems with
unacceptably high error rates or \"human only\" systems that are
expensive and difficult to scale, and that slow down decision making.

This API reference includes information about API actions and data types
you can use to interact with Augmented AI programmatically.

You can create a flow definition against the Augmented AI API. Provide
the Amazon Resource Name (ARN) of a flow definition to integrate AI
service APIs, such as \code{Textract.AnalyzeDocument} and
\code{Rekognition.DetectModerationLabels}. These AI services, in turn, invoke
the StartHumanLoop API, which evaluates conditions under which humans
will be invoked. If humans are required, Augmented AI creates a human
loop. Results of human work are available asynchronously in Amazon
Simple Storage Service (Amazon S3). You can use Amazon CloudWatch Events
to detect human work results.

You can find additional Augmented AI API documentation in the following
reference guides: Amazon Rekognition, Amazon SageMaker, and Amazon
Textract.
}
\section{Service syntax}{
\preformatted{svc <- augmentedairuntime(
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
\link[=augmentedairuntime_delete_human_loop]{delete_human_loop} \tab Deletes the specified human loop for a flow definition \cr
\link[=augmentedairuntime_describe_human_loop]{describe_human_loop} \tab Returns information about the specified human loop \cr
\link[=augmentedairuntime_list_human_loops]{list_human_loops} \tab Returns information about human loops, given the specified parameters \cr
\link[=augmentedairuntime_start_human_loop]{start_human_loop} \tab Starts a human loop, provided that at least one activation condition is met\cr
\link[=augmentedairuntime_stop_human_loop]{stop_human_loop} \tab Stops the specified human loop
}
}

\examples{
\donttest{svc <- augmentedairuntime()
svc$delete_human_loop(
  Foo = 123
)}

}
