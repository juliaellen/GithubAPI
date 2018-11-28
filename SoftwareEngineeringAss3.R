
#Step 3 Visualisation

install.packages("devtools")
install.packages("Rcpp")
library(devtools)
library(Rcpp)
install_github('ramnathv/rCharts', force= TRUE)
require(rCharts)

#The above  lines of code give me access to a package with D3.js libraries, allowing
#me to produce visualizations which will follow.  Find the link here:
#https://github.com/ramnathv/rCharts


myPlot <- nPlot(numberOfFollowers ~ namesOfFollowers, data = finalData, type = "multiBarChart")
myPlot
myPlot$save("myplot.html")  #Saves plot to my files

#Graph shows that kennyc11 and ohalloa2 are the most influential developers who follow me.







