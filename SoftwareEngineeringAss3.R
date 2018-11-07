

myData <- fromJSON("https://api.github.com/users/juliaellen")
myData$followers #No. followers I have.
myData$public_repos #No. public repositories I have.

#I want specific details about my followers, so i use the link below

myFollowers <- fromJSON("https://api.github.com/users/juliaellen/followers")
myFollowers$login #Usernames of all users who follow me.
length <- length(myFollowers$login) #Amount of people who follow me.
length

