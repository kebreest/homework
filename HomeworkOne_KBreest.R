#Kazmiera Breest

# HomeworkOneTemplate.r
# This tells us what this file does
#
# dr 7.31.2020

# Reminder: the # "comments" out a line of text; that is, if you precede a line with "#", 
# then R ignores that line

# =-=-=-=-=-=-=-=-=-=-=-=-
# front end material. 
# =-=-=-=-=-=-=-=-=-=-=-=-

library(tidyverse)

# =-=-=-=-=-=-=-=-=-=-=-=-
# Some quick code reminders 
# =-=-=-=-=-=-=-=-=-=-=-=-

# Here's an example of storing an object.
hello <- paste("Hello World!")
response <- paste("Hi there!")

# Look over there -> 
# In the "Environment" window, you'll see that you've created an object that is 
# now stored in your workspace. 

# Now type hello. R "pastes" the line of text that says "Hello World!" as your output.
hello
response
# Ok, with those reminders out of the way, let's get some data into R

# =-=-=-=-=-=-=-=-=-=-=-=-=-
# Reading in Data
# =-=-=-=-=-=-=-=-=-=-=-=-=-

# What you need to do from here on out is dependent on the dataset 
# you choose to work with! Here's an example of how I'd approach this with
# a file using "+" as a delimiter

myData <- read.delim("plusDelimitedData.txt", sep = "+", header=T)

# let's unpack that a bit. 
# I'm creating an object called myData
# I'm using the read.delim() function to read it in
# I'm specifying the name of the file; it's in my working directory!
# I'm specifying the delimiter (here, "+", but often commas (",") or tabs ("\t")
# I'm specifying that there is a header included in the data that features the variable names

# Now, let's check the first few rows. I'll let you remember how to do that!

# =-=-=-=-=-=-=-=-=-=-=-=-
# Covid Data Work 
# =-=-=-=-=-=-=-=-=-=-=-=-

#I'm using the read_tsv function to read in the data since I've never worked with this type of file before! Wanted to test it out
covidData <- read_tsv("CovidResponses.tsv")

#To check the first few rows, I started by creating a Tibble 
cTibble <- as_tibble(covidData)
#my data has 80 variables, 3,460 observations

#I'm using the print function to display the first 10 observations/rows.  
print(cTibble, n = 10, width = 80)
