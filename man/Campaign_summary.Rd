\name{Campaign_summary}
\alias{Campaign_summary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Campaign Summary
}
\description{
Returns key summary statistics of the performance of the campaign including opens, bounces, clicks, etc.
}
\usage{
Campaign_summary(campaignID)
Campaign_summary(campaignID,auth)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{campaignID}{
The ID of the specific campaign you want the summary for. See \code{\link{list_campaigns}} }
}
  \item{auth}{
  your accounts API key. This is not necessary if you have set a global variable: Sys.setenv('CampMonauth' = "API_KEY")
  }
\details{
Campaign_summary provides the necessary campaign statistics that a marketer may want to assess the quality of a campaign.
}
\value{
\item{WebVersionURL}{\code{\link{list_campaigns}}}
\item{WebVersionTextURL}{\code{\link{list_campaigns}}}
\item{WorldviewURL}{A world map of opens and clicks. }
\item{Forwards}{The number of times the email was forwarded on to other individuals.}
\item{Likes}{The number of 'likes' for the specific campaign.}
\item{Mentions}{The number of 'mentions' for the specific campaign.}
\item{Recipients}{The total number of recipients the campaign was sent to.}
\item{TotalOpened}{The total number of opens (non-unique) for the campaign.}
\item{Clicks}{The total number of click throughs for the given campaign.}
\item{Unsubscribed}{The total number of unsubscribes for the given campaign.}
\item{Bounced}{The number of subscribers who have bounced for a given campagin (whether a hard or soft bounce).}
\item{UniqueOpened}{The number of unique subscribers who have opened the given campaign.}
\item{SpamComplaints}{The number of subscribers who marked the given campaign as spam.}

}


\seealso{
\code{\link{list_campaigns}}
\code{\link{Campaigns}}
\code{\link{Client}}

}
\examples{
#set API Key
Sys.setenv('CampMonauth' = "API_KEY")

#list all campaigns
l <- list_campaigns()

#get the summary for the first campaign on the list
Summary <- Campaign_summary(l$CampaignID[1])

}

