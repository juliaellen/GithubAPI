# GithubAPI
Interrogate the Github API to retrive and display infromation about the logged in developer.

The data I chose to analyse is the number of followers I have, thus finding out who are the most influential developers that follow me. I believe the amount of GitHub followers a user has is indicitive of the quality of their work. This is the aspect of the software engineering process which I have elucidated.


Interogating the Github API:
I made an application in order to gain access to the github dsatabase. This meant I could extract data using the 'fromJson' function. The extracted information is stored in a dataframe. The '$' operator can be used to display specific elements from this information.

Processing the data: I used a for loop to access the names of my followers, and how many people they were following. I stored these in one dataframe for ease of storage and access.

Visualization: I used a package in R called rCharts which supports D3.JS graphs and plots. I produced a bar chart with follower names on the x axis and number of followers on the y axis. The final line of code saves the plot as an html file called "myplot.html". The myplot.html file which I have uploaded to GitHub should display this graph. I have also uploaded a screenshot which demonstrate the interactive graph.


Note* when I tried to re run my R code it did not work as it said there was already a connection open.
I was unable to resolve this but I have uploaded a screenshot of my graph if the same error occurs.
