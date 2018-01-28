# Set working Directory
setwd("C:/R/sql")

# install.packages("RMySQL","dbConnect")
library(RMySQL)
library(dbConnect)

# Create Connection between MySQL and R
# MySQL()    => DBIDriver            # user       => user name
# password   => user password        # dbname     => DataBase name
con <- dbConnect(MySQL(),user="user_name", password="user_password",dbname="database_name", host="localhost")

# disconnect the connection
on.exit(dbDisconnect(con))

# shows list of tables in database
dbListTables(con)

# Write SQL Query
myQuery <- "select * from table_name;"

# Store a result in variable
df <- dbGetQuery(con,myQuery)

# Now you have all value
# Perform your R functions

str(df)
head(df)
summary(df)
