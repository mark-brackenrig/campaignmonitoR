# campaignmonitoR
Campaign Monitor API wrapper for R. Note this is still a work in progess, suggestions welcome.


## Getting Started

### Authentication
To authenticate the API, you may either pass on the API key directly through each function using the 'auth' argument, or you can set a global variable as so:

`Sys.setenv(CampMonauth = 'API_KEY')`

## Testing

To test the connection, use the function `Client()`. This will return the client information that is available.