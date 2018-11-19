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


#Viewing other user's information: Changing the user name in
#the link above.
ohalloa1 <- fromJSON("https://api.github.com/users/ohalloa2/following")
ohalloa2$login

#Instead of viewing this information in a dataframe, I can convert it back to a
#JSon and study it this way, as it is viewed in a browser.
myDataJSon <- toJSON(myData, pretty = TRUE)
myDataJSon

###########################################################################################

#I have interogated the github API and displayed information regaring the developer.
#Part 2 of Assignment below

###########################################################################################


#Interested in finding the number of followers that my followers have and so 
#determine which are the most influential developers out of my followers.

followersNames <- fromJSON("https://api.github.com/users/juliaellen/followers")
followersNames$login #The user names of my followers

a <- "https://api.github.com/users/"
b <- followersNames$login[1]
b
c <- "/followers"

test <- sprintf("%s%s%s", a,b,c) #this method amalgamates a, b and c into one string 
test         

#I now have access to kennyc11's followers. 
#If I wanted to gain access to emmalouiser's followers I would change 
#b <- followersNames$login[2] to b <- followersNames$login[5] as she is last in the list.



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


#Viewing other user's information: Changing the user name in
#the link above.
ohalloa1 <- fromJSON("https://api.github.com/users/ohalloa2/following")
ohalloa2$login

#Instead of viewing this information in a dataframe, I can convert it back to a
#JSon and study it this way, as it is viewed in a browser.
myDataJSon <- toJSON(myData, pretty = TRUE)
myDataJSon

###########################################################################################

#I have interogated the github API and displayed information regaring the developer.
#Part 2 of Assignment below

###########################################################################################


#Interested in finding the number of followers that my followers have and so 
#determine which are the most influential developers out of my followers.

#Step 1:

followersNames <- fromJSON("https://api.github.com/users/juliaellen/followers")
followersNames$login #The user names of my followers

a <- "https://api.github.com/users/"
b <- followersNames$login[1]
b
c <- "/followers"

test <- sprintf("%s%s%s", a,b,c) #this method amalgamates a, b and c into one string 
test         

#I now have access to kennyc11's followers. 
#If I wanted to gain access to emmalouiser's followers I would change 
#b <- followersNames$login[2] to b <- followersNames$login[5] as she is last in the list.


#Step 2:

numberOfFollowers <- c()    #empty vector
namesOfFollowers <- c()
for (i in 1:length(followersNames$login)) 
  {
  followers <- followersNames$login[i] #loops through each of my followers, indexed by i
  jsonLink <- sprintf("%s%s%s", a, followers, c) #creates a link for my ith follower
  followData <- fromJSON(jsonLink) #stores the followers of my ith follower
  numberOfFollowers[i] = length(followData$login) #amount of followers the ith follower has
  namesOfFollowers[i] = followers #names of all users following the ith follower
  
}
numberOfFollowers
namesOfFollowers
finalData <- data.frame(numberOfFollowers, namesOfFollowers) #stores two vectors as one
#data frame
finalData$namesOfFollowers    
finalData$numberOfFollowers   #Number of followers of each of my followers


