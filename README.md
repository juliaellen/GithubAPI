# GithubAPI
Interrogate the Github API to retrive and display infromation about the logged in developer.

The data I chose to analyse is the number of followers I have, thus finding out who are the most influential developers that follow me. I believe the amount of GitHub followers a user has is indicitive of the quality of their work. This is the aspect of the software engineering process which I have elucidated.

How to run: Ensure packages are installed and libraries are activated or 'checked' (they will have a tick beside them in the packages pane on the right hand side of the screen). Run each line of code using CTRL + enter, starting from the top. Allow time for each line of code to run, especially installing packages and producing plots and graphs. When running the line myapp <- oauth_app(appname = "Assignment3", key = "8a67183dbf7c715328dc", secret = "b9519bed5efe29c94ca84ec5ff202eec475e029f") near the start of the code, we may be asked to make a selection about access credentials between R sessions. Simply type 'Yes' in the console and press enter. Continue to run the rest of the code as normal

Interogating the Github API:
I made an application in order to gain access to the github dsatabase. This meant I could extract data using the 'fromJson' function. The extracted information is stored in a dataframe. The '$' operator can be used to display specific elements from this information.

Processing the data: I used a for loop to access the names of my followers, and how many people they were following. I stored these in one dataframe for ease of storage and access.

Visualization: I used a package in R called rCharts which supports D3.JS graphs and plots. I produced a bar chart with follower names on the x axis and number of followers on the y axis. The final line of code saves the plot as an html file called "myplot.html". in the user's documents folder. The file should be in your file explorer if this line has been run properly. However, the myplot.html file which I have uploaded to GitHub may work. In any case, I have also uploaded two screenshots which demonstrate the interactive graph.

Conclusion: The chart shows that kennyc11 is the most influential developer that follows me, with 12 followers. gabogundipe is the least influential, with just 2 followers.
