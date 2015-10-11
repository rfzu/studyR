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

        # compl <- complete(directory)
        # id <- compl[,1][which(compl$nobs > threshold)]

        # # print(id)
        # if(id == )
        # path = paste('~/Documents/code/R/studyR/homework_1/',directory,'/', formatC(id,width=3,flag='0'),'.csv', sep='')

        # ccc <- c()

        # for(p in path) {
        #         conn =  file(p,'r')
        #         # data <- rbind(data, read.csv(conn))
        #         data <- read.csv(conn)
        #         close(conn)
        #         cc = complete.cases(data$sulfate & data$nitrate)
        #         ccc <- c(ccc,cor(data$sulfate[cc], data$nitrate[cc]))
        # }

        # print(data)
        # print(length(data))
        # print(length(cc))
        # # print(data$nitrate[cc])
        # ccc <- cor(data$sulfate[cc], data$nitrate[cc])
        # print(ccc)
        # ccc

        df = complete(directory)
        ids = df[df["nobs"] > threshold, ]$id
        corrr = numeric()
        for (i in ids) {

          newRead = read.csv(paste('~/Documents/code/R/studyR/homework_1/',directory, "/", formatC(i, width = 3, flag = "0"), 
                                   ".csv", sep = ""))
          dff = newRead[complete.cases(newRead), ]
          corrr = c(corrr, cor(dff$sulfate, dff$nitrate))
        }
        return(corrr)
}
