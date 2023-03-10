# Ergast.com has historical data for formula 1 races
# 1957 race data is avalable in JSON at:
# http://ergast.com/api/f1/1957/results.json
# Use jsonlite for this example

install.parkages(c('jsonlite', 'curl'))
require('jsonlite')

f1 <- fronJSON('http://ergast.com/api/f1/1957/results.json')
f1
str(f1)

# Convert R list to data.frame
dr <- f1$MRData$RaceTable$Races$Result[[1]]$Driver
colnames(dr)
dr[1:5, c('givenName', 'familyName',
          'dataOfBirth', 'nationality')]
