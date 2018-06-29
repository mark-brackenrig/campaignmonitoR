smart_email_listings <- function(status=c("all", "draft","active"), auth=Sys.getenv("CampMonauth"),clientID){
if(length(clientID>0)){
    url <- paste0('https://api.createsend.com/api/v3.2/transactional/smartEmail?status=',status,'&clientID=',clientID,'.json', collapse = ", ")
}else{
  url <- paste0('https://api.createsend.com/api/v3.2/transactional/smartEmail?status=',status,'.json', collapse = ", ")
  
}
    raw.result = GET(url = url,authenticate(user = auth, password = ""))
    
    this.raw.content <- rawToChar(raw.result$content)
    
    this.content <- fromJSON(this.raw.content)
    
    if(this.content$Message!="Invalid ClientID"){
    return(as.data.frame(this.content))}
return(this.content$Message)
}


