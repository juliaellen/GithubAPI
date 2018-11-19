
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



