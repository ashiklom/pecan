% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rabbitmq.R
\name{rabbitmq_send_message}
\alias{rabbitmq_send_message}
\title{Send a message to RabbitMQ rest API.}
\usage{
rabbitmq_send_message(url, auth, body, action = "POST", silent = FALSE)
}
\arguments{
\item{url}{the full endpoint rest url}

\item{auth}{authentication for rabbitmq in httr:auth}

\item{body}{the actual body to send, this is a rabbitmq message.}

\item{action}{the rest action to perform}

\item{silent}{boolean to indicate if logging should be performed.}
}
\value{
will return NA if message failed, otherwise it will either
return the resulting message, or if not availble an empty string "".
}
\description{
It will check the resulting status code and print a message in case
something goes wrong.
}
