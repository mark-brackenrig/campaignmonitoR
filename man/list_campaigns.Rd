\name{list_campaigns}
\alias{list_campaigns}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
list_campagins
}
\description{
Lists all of the campaigns under the specific client account.
}
\usage{
list_campaigns()
list_campagins(auth)
list_campagins(client, auth)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{auth}{
your accounts API key. This is not necessary if you have set a global variable: Sys.setenv('CampMonauth' = "API_KEY")
}
  \item{client}{
  The ClientID, this is not necessary if there is only one client ID.
  }
}
\details{
This function aims to list out every campaign that has been run off a specific account. }
\value{
  \item{Name}{The name of the campaign. This is not visable to the recipient of the campaign.}
  \item{FromName}{The name of the sender of the campaign.}
  \item{FromEmail}{The Email the campaign has been sent from.}
  \item{ReplyTo}{The email that recipients can reply to.}
  \item{SentDate}{The date the campaign began.}
  \item{TotalRecipients}{How many recipients the campaign was sent to.}
  \item{CampaignID}{The ID of the campaign. This is useful for other functions in this package.}
  \item{Subject}{The subject line of the email.}
  \item{WebVersionURL}{A link to the full HTML version of the email.}
  \item{WebVersionTextURL}{A link to the text of the email, stripped of all HTML or CSS styling.}

}



\seealso{
 \code{\link{Client}}
 \code{\link{Campaign}}
 }
\examples{
#set API Key
Sys.setenv('CampMonauth' = "API_KEY")

All_Campaigns <- list_campaigns()

#If you haven't set the API key

All_Campaigns_with_API <- list_campaigns(auth = "API_KEY")

#you may have multiple clientIDs
#this is a random clientID
All_Campaigns_with_ClientID <- list_campaigns(client = "q6hu31d768hmgjo9745hjnf1e234abc" )


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

