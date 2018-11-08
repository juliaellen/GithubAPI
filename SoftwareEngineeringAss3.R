
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

