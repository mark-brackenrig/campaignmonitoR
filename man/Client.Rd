\name{Client}
\alias{Client}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Client Function
}
\description{
Returns the client names and client IDs associated with the campaign monitor account}
\usage{
Client(auth)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{auth}{
Your API key. By default this function looks for a saved environment variable "CampMonauth". 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{ClientID }{Client ID from Campaign Monitor}
  \item{Name }{Name of the Client}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
## Do not Run

Sys.setenv("CampMonauth" = "API Key")

Client()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ API }% use one of  RShowDoc("KEYWORDS")
\keyword{ campaignmonitor }% __ONLY ONE__ keyword per line
