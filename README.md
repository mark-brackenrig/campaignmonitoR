# campaignmonitoR
Campaign Monitor API wrapper for R. Note this is still a work in progess, suggestions welcome.


## Getting Started

### Authentication
To authenticate the API, you may either pass on the API key directly through each function using the 'auth' argument, or you can set a global variable as so:

`Sys.setenv(CampMonauth = 'API_KEY')`

## Testing

To test the connection, use the function `Client()`. This will return the client information that is available.

## Usage
This API wrapper is designed to be an R interface for CampaignMonitor for statistical analysis. 

### Functions

#### Client
Returns the ClientID and name of the clients linked to the API key.

#### list_campaigns
Lists all of the campaigns that were sent from the specific ClientID.

#### campaignlists
Returns the ListID and name of the subscriber list the campaign was sent to.

#### Lists
Returns all subscriber lists under that clientID.

#### Campaign 
Depending on the arguements, this function will return subscribers who either received the email, opened the email, clicked through a link in the email, unsubscribed from the list, bounced (either hard or soft), or marked the email as spam. 

#### listsegments

#### listsubscribers

#### listwebhooks

#### segmentdetails

#### smart_email_listings

#### subscriber_details
