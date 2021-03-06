Campaignlists <-  function(campaignID,auth=Sys.getenv("CampMonauth")){
  
    url <- paste0('https://api.createsend.com/api/v3.2/campaigns/',campaignID,'/','listsandsegments','.json', collapse = ", ")
    
    raw.result = GET(url = url,authenticate(user = auth, password = ""))
    
    this.raw.content <- rawToChar(raw.result$content)
    
    this.content <- fromJSON(this.raw.content)
    
    return(as.data.frame(this.content$Lists))
}