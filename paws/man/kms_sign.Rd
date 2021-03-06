% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kms_operations.R
\name{kms_sign}
\alias{kms_sign}
\title{Creates a digital signature for a message or message digest by using the
private key in an asymmetric CMK}
\usage{
kms_sign(KeyId, Message, MessageType, GrantTokens, SigningAlgorithm)
}
\arguments{
\item{KeyId}{[required] Identifies an asymmetric CMK. AWS KMS uses the private key in the
asymmetric CMK to sign the message. The \code{KeyUsage} type of the CMK must
be \code{SIGN_VERIFY}. To find the \code{KeyUsage} of a CMK, use the DescribeKey
operation.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias
name, or alias ARN. When using an alias name, prefix it with \code{"alias/"}.
To specify a CMK in a different AWS account, you must use the key ARN or
alias ARN.

For example:
\itemize{
\item Key ID: \verb{1234abcd-12ab-34cd-56ef-1234567890ab}
\item Key ARN:
\verb{arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab}
\item Alias name: \code{alias/ExampleAlias}
\item Alias ARN: \code{arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias}
}

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey. To
get the alias name and alias ARN, use ListAliases.}

\item{Message}{[required] Specifies the message or message digest to sign. Messages can be 0-4096
bytes. To sign a larger message, provide the message digest.

If you provide a message, AWS KMS generates a hash digest of the message
and then signs it.}

\item{MessageType}{Tells AWS KMS whether the value of the \code{Message} parameter is a message
or message digest. To indicate a message, enter \code{RAW}. To indicate a
message digest, enter \code{DIGEST}.}

\item{GrantTokens}{A list of grant tokens.

For more information, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token}{Grant Tokens}
in the \emph{AWS Key Management Service Developer Guide}.}

\item{SigningAlgorithm}{[required] Specifies the signing algorithm to use when signing the message.

Choose an algorithm that is compatible with the type and size of the
specified asymmetric CMK.}
}
\description{
Creates a \href{https://en.wikipedia.org/wiki/Digital_signature}{digital signature} for a
message or message digest by using the private key in an asymmetric CMK.
To verify the signature, use the Verify operation, or use the public key
in the same asymmetric CMK outside of AWS KMS. For information about
symmetric and asymmetric CMKs, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html}{Using Symmetric and Asymmetric CMKs}
in the \emph{AWS Key Management Service Developer Guide}.
}
\details{
Digital signatures are generated and verified by using asymmetric key
pair, such as an RSA or ECC pair that is represented by an asymmetric
customer master key (CMK). The key owner (or an authorized user) uses
their private key to sign a message. Anyone with the public key can
verify that the message was signed with that particular private key and
that the message hasn\'t changed since it was signed.

To use the \code{Sign} operation, provide the following information:
\itemize{
\item Use the \code{KeyId} parameter to identify an asymmetric CMK with a
\code{KeyUsage} value of \code{SIGN_VERIFY}. To get the \code{KeyUsage} value of a
CMK, use the DescribeKey operation. The caller must have \code{kms:Sign}
permission on the CMK.
\item Use the \code{Message} parameter to specify the message or message digest
to sign. You can submit messages of up to 4096 bytes. To sign a
larger message, generate a hash digest of the message, and then
provide the hash digest in the \code{Message} parameter. To indicate
whether the message is a full message or a digest, use the
\code{MessageType} parameter.
\item Choose a signing algorithm that is compatible with the CMK.
}

When signing a message, be sure to record the CMK and the signing
algorithm. This information is required to verify the signature.

To verify the signature that this operation generates, use the Verify
operation. Or use the GetPublicKey operation to download the public key
and then use the public key to verify the signature outside of AWS KMS.

The CMK that you use for this operation must be in a compatible key
state. For details, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html}{How Key State Affects Use of a Customer Master Key}
in the \emph{AWS Key Management Service Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$sign(
  KeyId = "string",
  Message = raw,
  MessageType = "RAW"|"DIGEST",
  GrantTokens = list(
    "string"
  ),
  SigningAlgorithm = "RSASSA_PSS_SHA_256"|"RSASSA_PSS_SHA_384"|"RSASSA_PSS_SHA_512"|"RSASSA_PKCS1_V1_5_SHA_256"|"RSASSA_PKCS1_V1_5_SHA_384"|"RSASSA_PKCS1_V1_5_SHA_512"|"ECDSA_SHA_256"|"ECDSA_SHA_384"|"ECDSA_SHA_512"
)
}
}

\keyword{internal}
