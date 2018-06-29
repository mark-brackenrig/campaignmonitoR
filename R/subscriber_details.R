subscriber_details <- function(listID,email, auth=Sys.getenv("CampMonauth")){
  url <- paste0('https://api.createsend.com/api/v3.2/subscribers/',listID,'.json?email=',email, collapse = ", ")
  raw.result = GET(url = url,authenticate(user = auth, password = ""))
  
  this.raw.content <- rawToChar(raw.result$content)
  
  this.content <- fromJSON(this.raw.content)
  this.content$CustomFields <- NULL
  details <- as.data.frame(this.content)
  return(details) 
}


subscriber_details_custom  <- function(listID,email, auth=Sys.getenv("CampMonauth")){
  url <- paste0('https://api.createsend.com/api/v3.2/subscribers/',listID,'.json?email=',email, collapse = ", ")
  raw.result = GET(url = url,authenticate(user = auth, password = ""))
  
  this.raw.content <- rawToChar(raw.result$content)
  
  this.content <- fromJSON(this.raw.content)
  details <- this.content$CustomFields
    return(as.data.frame(details))
}