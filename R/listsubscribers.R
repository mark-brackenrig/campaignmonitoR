listsubscribers <- function(listID, type=c("active", "unconfirmed", "unsubscribed", "bounced", "deleted"),auth=Sys.getenv("CampMonauth")){
  
  if(type %in% c("active", "unconfirmed", "unsubscribed", "bounced", "deleted")){
    url <- paste0('https://api.createsend.com/api/v3.2/lists/',listID,'/',type,'.json', collapse = ", ")
    
    raw.result = GET(url = url,authenticate(user = auth, password = ""))
    
    this.raw.content <- rawToChar(raw.result$content)
    
    this.content <- fromJSON(this.raw.content)
    
    return(as.data.frame(this.content))}else{
      return(stop('Subscriber type is not correct. Try "active", "unconfirmed", "unsubscribed", "bounced", "deleted".'))
    }
}
