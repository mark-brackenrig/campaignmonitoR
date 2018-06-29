library(callr)
Campaign <- function(auth=Sys.getenv("CampMonauth"),campaignID, type){
  if(type %in% c("recipients", "listsandsegments", "bounces", "opens", "clicks", "unsubscribes", "spam")){
    url <- paste0('https://api.createsend.com/api/v3.2/campaigns/',campaignID,'/',type,'.json', collapse = ", ")
  
  raw.result = GET(url = url,authenticate(user = auth, password = ""))
  
  this.raw.content <- rawToChar(raw.result$content)
  
  this.content <- fromJSON(this.raw.content)

return(as.data.frame(this.content))}else{
  return(stop('Type is not correct. Try "recipients", "listsandsegments", "bounces", "opens", "clicks", "unsubscribes", "spam".'))
}
  }


