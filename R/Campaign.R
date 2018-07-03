
Campaign <- function(campaignID, type=c("recipients", "bounces", "opens", "clicks", "unsubscribes", "spam"),length = 1000,auth=Sys.getenv("CampMonauth")){
  if(type %in% c("recipients",  "bounces", "opens", "clicks", "unsubscribes", "spam")){
    
    if(length>1000){
      TypeDF <- data.frame(types = c("recipients", "bounces", "opens", "clicks", "unsubscribes", "spam"), 
                           names = c("Recipients", "Bounced", "UniqueOpened", "Clicks", "Unsubscribed","SpamComplaints"))

    sum <- ceiling(length/1000)
    pb <- txtProgressBar(min = 0, max = sum, style = 3)
    for(i in 1:sum){
    url <- paste0('https://api.createsend.com/api/v3.2/campaigns/',campaignID,'/',type,'.json?page=',i, collapse = ", ")
    
    raw.result = GET(url = url,authenticate(user = auth, password = ""))
    
    this.raw.content <- rawToChar(raw.result$content)
    
    this.content <- fromJSON(this.raw.content)
    temp <- as.data.frame(this.content)
    if(i==1){content <- temp}else{content <- rbind(temp,content)}
    setTxtProgressBar(pb, i)
    
    }
    close(pb)
    }else{ url <- paste0('https://api.createsend.com/api/v3.2/campaigns/',campaignID,'/',type,'.json', collapse = ", ")
    
    raw.result = GET(url = url,authenticate(user = auth, password = ""))
    
    this.raw.content <- rawToChar(raw.result$content)
    
    this.content <- fromJSON(this.raw.content)
    
    content <- this.content
      
    }
    return(as.data.frame(content))}else{
      return(stop('Type is not correct. Try "recipients",  "bounces", "opens", "clicks", "unsubscribes", "spam".'))
    }
}
