pollutantmean <- function(directory = "specdata", pollutant, id = 1:332) {

        path = paste('~/Documents/code/R/studyR/homework_1/',directory,'/', formatC(id,width=3,flag='0'),'.csv', sep='')
        
        print(path)

        data <- c()
        for(p in path) {
                conn <- file(p,'r')
                data <- rbind(data, read.csv(conn))
                close(conn)
        }

        # print(pollutant)
        # print(data)
        mean(data[,pollutant], na.rm = TRUE )

        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the result!
}