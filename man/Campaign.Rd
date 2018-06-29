\name{Campaign}
\alias{Campaign}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Campaign
%%  ~~function to do ... ~~
}
\description{
Retrieve campaign specific information. The function returns information in a data frame format. 
}
\usage{
Campaign(campaignID, type,auth)

Campaign(campaignID, type)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{campaignID}{ The ID of the specific campaign that you wish to understand.
%%     ~~Describe \code{x} here~~
}
  \item{type}{the type of information you wish to retrieve. Must be one of the following: "recipients", "bounces", "opens", "clicks", "unsubscribes", or "spam"}

  \item{auth}{your accounts API key. This is not necessary if you have set a global variable: Sys.setenv('CampMonauth' = "API_KEY")
  
  }
  }
\details{
  recipients - Recipients provides a list of subscribers who received the emailed.
 
  bounces - Emails that bounced and their bounce reason (i.e. hard or soft bounce)
 
  opens - Subscribers who opened the email/n
 
  clicks - Subscribers who opened and clicked through in the email
 
  unsubscribes - Subscribers who opted to unsubscribe
 
  spam - Subscribers who marked the email as 'spam'
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
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
 \code{\link{Client}}
}
\examples{

#set API Key
Sys.setenv('CampMonauth' = "API_KEY")

#note this is a random campaign ID
Campaign("14a19d1e3b2z1c7s3bc632fcbb179334" , "clicks")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
