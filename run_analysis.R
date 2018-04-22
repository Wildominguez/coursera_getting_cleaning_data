    ## Load libraries
    library(readr)
    library(data.table)
    library(dplyr)
    
    ## load files
    ## labels
    feat <- read_table2("features.txt", col_names = FALSE, col_types = cols(X1 = col_skip()))
    act <- read_table2("activity_labels.txt", col_names = FALSE)
    
    ##Make unique and valid names for variables
    
    
    ## loading test dataset
    te_sub <- read_table2("test/subject_test.txt", col_names = FALSE)
    te_act <- read_table2("test/y_test.txt", col_names = FALSE)
    te_data <- read_table2("test/X_test.txt", 
                               col_names = FALSE)
  
    ## loading train dataset
    tr_sub <- read_table2("train/subject_train.txt", col_names = FALSE)
    tr_act <- read_table2("train/y_train.txt", col_names = FALSE)
    tr_data <- read_table2("train/X_train.txt", 
                          col_names = FALSE)
    
    ## ITEM #4 Appropriately labels the data set with descriptive variable names.
    ## Assign column labels to datasets
    colnames(te_data) <- as.vector(make.names(feat$X2, unique = TRUE))
    colnames(te_sub) <- "subject"
    colnames(te_act) <- "activity"
    colnames(tr_data) <- as.vector(make.names(feat$X2, unique = TRUE))
    colnames(tr_sub) <- "subject"
    colnames(tr_act) <- "activity"
    
    ## Assign subject ID and activity code to datasets
    te_data <- cbind(te_sub, te_act, te_data)
    tr_data <- cbind(tr_sub, tr_act, tr_data)
    
    
    ## ITEM #1 Merges the training and the test sets to create one data set.
    data <- rbind(te_data, tr_data)
    
  
    ## ITEM #2 Extracts only the measurements on the mean ("mean") 
    ## and standard deviation ("std") for each measurement.
    data1 <- select(data, subject, activity, 
                    contains("mean"), 
                    contains("std"), 
                    -contains("meanFreq"), 
                    -contains("gravityMean"), 
                    -contains("tBodyAccMean")
                    -contains("tBodyAccJerkMean"), 
                    - contains("tBodyGyroMean"), 
                    -contains("tBodyGyroJerkMean"))
    

    ## ITEM #3 Uses descriptive activity names to name the activities in the data set
    data1$activity[data1$activity == 1] <- "walking"
    data1$activity[data1$activity == 2] <- "walking_upstairs"
    data1$activity[data1$activity == 3] <- "walking_downstairs"
    data1$activity[data1$activity == 4] <- "sitting"
    data1$activity[data1$activity == 5] <- "standing"
    data1$activity[data1$activity == 6] <- "laying"
    
    
    
    ## ITEM #5 From the data set in step 4, creates a second, independent tidy data set 
    ##  with the average of each variable for each activity and each subject.
    data2 <- data1 %>%
      group_by(activity, subject) %>%
      summarise_all(funs(mean))
    
    ##Write datasets to csv files
    write.csv(data1, file = "data1.csv")
    write.csv(data2, file = "data2.csv")
    
