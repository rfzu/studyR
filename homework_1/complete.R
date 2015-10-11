complete <- function(directory, id = 1:332) {

        path = paste('~/Documents/code/R/studyR/homework_1/',directory,'/', formatC(1:332,width=3,flag='0'),'.csv', sep='')
        data <- c()
        for(i in id) {
                conn <- file(path[i],'r')
                data_set <- read.csv(conn)
                cc = complete.cases(data_set$sulfate & data_set$nitrate)
                nob = c(i,length(cc[which(cc == TRUE)]))
                close(conn)
                data <- rbind(data, data.frame(id = nob[1], nobs = nob[2]))
        }

        data

        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
}