#install.packages("jsonlite")
library(jsonlite)
#install.packages("httpuv")
library(httpuv)
#install.packages("httr")
library(httr)


# Can be github, linkedin etc depending on application
oauth_endpoints("github")


# Change based on what you 
myapp <- oauth_app(appname = "Assignment3",
                   key = "8a67183dbf7c715328dc",
                   secret = "b9519bed5efe29c94ca84ec5ff202eec475e029f")
1

# Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)

# Take action on http error
stop_for_status(req)

# Extract content from a request
json1 = content(req)

# Convert to a data.frame
gitDF = jsonlite::fromJSON(jsonlite::toJSON(json1))

# Subset data.frame
gitDF[gitDF$full_name == "jtleek/datasharing", "created_at"]

# The code above was sourced from Michael Galarnyk's blog, found at:
# https://towardsdatascience.com/accessing-data-from-github-api-using-r-3633fb62cb08


#Step1: Interrogating the GitHub API.  

#The information about my github profile is stored in a data frame called 'myData'.  
#I can access different parts of the data frame using the $ operator.

myData <- fromJSON("https://api.github.com/users/juliaellen")
myData$followers #No. followers I have.
myData$public_repos #No. public repositories I have.


#Information about my followers, 
myFollowers <- fromJSON("https://api.github.com/users/juliaellen/followers")
myFollowers$login #Usernames of all users who follow me.
length <- length(myFollowers$login) #Amount of people who follow me.
length

#Information about myrepositories 
repositories <- fromJSON("https://api.github.com/users/juliaellen/repos")
repositories$name #Names of my public repositories
repositories$created_at #When these repositories were created
lcadag <- fromJSON("https://api.github.com/repos/juliaellen/CS3012/commits") 
lcadag$commit$message #The title of each commit to my CS3012 repository.

