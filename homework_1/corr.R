corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0

        ## Return a numeric vector of correlations
        ## NOTE: Do not round the result!

        # id   = 1:332
        # path = paste('~/Documents/code/R/studyR/homework_1/',directory,'/', formatC(id,width=3,flag='0'),'.csv', sep='')        

        compl <- complete(directory)
        id <- compl[,1][which(compl$nobs > threshold)]
        # print(id)
        path = paste('~/Documents/code/R/studyR/homework_1/',directory,'/', formatC(id,width=3,flag='0'),'.csv', sep='')

        data = c()
        for(p in path) {
                conn =  file(p,'r')
                data <- rbind(data, read.csv(conn))
                close(conn)
        }

        # print(data)
        cc = complete.cases(data$sulfate & data$nitrate)
        cor(data$sulfate[cc], data$nitrate[cc])
}