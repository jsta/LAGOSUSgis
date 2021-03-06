% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{gh_file}
\alias{gh_file}
\title{Gets a file from a github repo, using the Data API blob endpoint}
\usage{
gh_file(
  url = NULL,
  ref = NULL,
  owner = NULL,
  repo = NULL,
  path = NULL,
  to_disk = TRUE,
  destfile = NULL,
  .token = NULL,
  .api_url = NULL,
  .method = "GET",
  .limit = NULL,
  .send_headers = NULL
)
}
\arguments{
\item{url}{the URL of the file to download via API, of the form
`:owner/:repo/blob/:path}

\item{ref}{the reference of a commit: a branch name, tag, or commit SHA}

\item{owner, repo, path}{alternate way to specify the file.  These will
override values in `url`}

\item{to_disk, destfile}{write file to disk (default=TRUE)?  If so, use the
name in `destfile`, or the original filename by default}

\item{.token, .api_url, .method, .limit, .send_headers}{arguments passed on to
[gh::gh]}
}
\value{
Either the local path of the downloaded file (default), or a raw
  vector
}
\description{
This avoids the 1MB limit of the content API and uses [gh::gh] to deal with
authorization and such.  See https://developer.github.com/v3/git/blobs/ and https://gist.github.com/noamross/73944d85cad545ae89efaa4d90b049db
}
