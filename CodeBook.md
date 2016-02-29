# Code Book
This code book contain the information about the source data, the changes performed after collecting the data and some information about the variables of the resulting data sets.

# Source Data 
The source data was collected from the UCI Machine Learning Repository to complete an assignment for a Coursera course named Getting and Cleaning Data instructed in the Coursera Course

# Changes Performed on the data 

The assignment involved working with the data set and producing tidy data of the source data. Below is a list of the operations done to achieve the outputs.

* Downloaded the data set
* Unzipped the data set into my chosen working directory
* Loaded source variable names for test and training data sets as the metadata 
* Loaded test and training data sets into data frames
* Combined test and training data frames using rbind
* Loaded columns names 
* Extraction of the mean and standard deviation variables
* Appropriately labels the data set with descriptive variable names
* create an independent tidy data set with the average of each variable for each activity and each subject
* Produced "tidy.txt" with the combined data frame as the expected output

# Variables


"Subject"  - 1 to 30 each representing a participant in the study                                                    
"Activity" -  the activity that the subject was doing at the time of the measurement                                                   
"TimeBodyAccelerometerelerometerMean()-X"                    
"TimeBodyAccelerometerelerometerMean()-Y"                    
"TimeBodyAccelerometerelerometerMean()-Z"                    
"TimeBodyAccelerometerelerometerSTD()-X"                     
"TimeBodyAccelerometerelerometerSTD()-Y"                     
"TimeBodyAccelerometerelerometerSTD()-Z"                     
"TimeGravityAccelerometerelerometerMean()-X"                 
"TimeGravityAccelerometerelerometerMean()-Y"                 
"TimeGravityAccelerometerelerometerMean()-Z"                 
"TimeGravityAccelerometerelerometerSTD()-X"                  
"TimeGravityAccelerometerelerometerSTD()-Y"                  
"TimeGravityAccelerometerelerometerSTD()-Z"                  
"TimeBodyAccelerometerelerometerJerkMean()-X"                
"TimeBodyAccelerometerelerometerJerkMean()-Y"                
"TimeBodyAccelerometerelerometerJerkMean()-Z"                
"TimeBodyAccelerometerelerometerJerkSTD()-X"                 
"TimeBodyAccelerometerelerometerJerkSTD()-Y"                 
"TimeBodyAccelerometerelerometerJerkSTD()-Z"                 
"TimeBodyGyroscopeMean()-X"                                  
"TimeBodyGyroscopeMean()-Y"                                  
"TimeBodyGyroscopeMean()-Z"                                  
"TimeBodyGyroscopeSTD()-X"                                   
"TimeBodyGyroscopeSTD()-Y"                                   
"TimeBodyGyroscopeSTD()-Z"                                   
"TimeBodyGyroscopeJerkMean()-X"                              
"TimeBodyGyroscopeJerkMean()-Y"                              
"TimeBodyGyroscopeJerkMean()-Z"                              
"TimeBodyGyroscopeJerkSTD()-X"                               
"TimeBodyGyroscopeJerkSTD()-Y"                               
"TimeBodyGyroscopeJerkSTD()-Z"                               
"TimeBodyAccelerometerelerometerMagnitudeMean()"             
"TimeBodyAccelerometerelerometerMagnitudeSTD()"              
"TimeGravityAccelerometerelerometerMagnitudeMean()"          
"TimeGravityAccelerometerelerometerMagnitudeSTD()"           
"TimeBodyAccelerometerelerometerJerkMagnitudeMean()"         
"TimeBodyAccelerometerelerometerJerkMagnitudeSTD()"          
"TimeBodyGyroscopeMagnitudeMean()"                           
"TimeBodyGyroscopeMagnitudeSTD()"                            
"TimeBodyGyroscopeJerkMagnitudeMean()"                       
"TimeBodyGyroscopeJerkMagnitudeSTD()"                        
"FrequencyBodyAccelerometerelerometerMean()-X"               
"FrequencyBodyAccelerometerelerometerMean()-Y"               
"FrequencyBodyAccelerometerelerometerMean()-Z"               
"FrequencyBodyAccelerometerelerometerSTD()-X"                
"FrequencyBodyAccelerometerelerometerSTD()-Y"                
"FrequencyBodyAccelerometerelerometerSTD()-Z"                
"FrequencyBodyAccelerometerelerometerMeanFreq()-X"           
"FrequencyBodyAccelerometerelerometerMeanFreq()-Y"           
"FrequencyBodyAccelerometerelerometerMeanFreq()-Z"           
"FrequencyBodyAccelerometerelerometerJerkMean()-X"           
"FrequencyBodyAccelerometerelerometerJerkMean()-Y"           
"FrequencyBodyAccelerometerelerometerJerkMean()-Z"           
"FrequencyBodyAccelerometerelerometerJerkSTD()-X"            
"FrequencyBodyAccelerometerelerometerJerkSTD()-Y"            
"FrequencyBodyAccelerometerelerometerJerkSTD()-Z"            
"FrequencyBodyAccelerometerelerometerJerkMeanFreq()-X"       
"FrequencyBodyAccelerometerelerometerJerkMeanFreq()-Y"       
"FrequencyBodyAccelerometerelerometerJerkMeanFreq()-Z"       
"FrequencyBodyGyroscopeMean()-X"                             
"FrequencyBodyGyroscopeMean()-Y"                             
"FrequencyBodyGyroscopeMean()-Z"                             
"FrequencyBodyGyroscopeSTD()-X"                              
"FrequencyBodyGyroscopeSTD()-Y"                              
"FrequencyBodyGyroscopeSTD()-Z"                              
"FrequencyBodyGyroscopeMeanFreq()-X"                         
"FrequencyBodyGyroscopeMeanFreq()-Y"                         
"FrequencyBodyGyroscopeMeanFreq()-Z"                         
"FrequencyBodyAccelerometerelerometerMagnitudeMean()"        
"FrequencyBodyAccelerometerelerometerMagnitudeSTD()"         
"FrequencyBodyAccelerometerelerometerMagnitudeMeanFreq()"    
"FrequencyBodyAccelerometerelerometerJerkMagnitudeMean()"    
"FrequencyBodyAccelerometerelerometerJerkMagnitudeSTD()"     
"FrequencyBodyAccelerometerelerometerJerkMagnitudeMeanFreq()"
"FrequencyBodyGyroscopeMagnitudeMean()"                      
"FrequencyBodyGyroscopeMagnitudeSTD()"                       
"FrequencyBodyGyroscopeMagnitudeMeanFreq()"                  
"FrequencyBodyGyroscopeJerkMagnitudeMean()"                  
"FrequencyBodyGyroscopeJerkMagnitudeSTD()"                   
"FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"              
"Angle(TimeBodyAccelerometerelerometerMean,Gravity)"         
"Angle(TimeBodyAccelerometerelerometerJerkMean),GravityMean)"
"Angle(TimeBodyGyroscopeMean,GravityMean)"                   
"Angle(TimeBodyGyroscopeJerkMean,GravityMean)"               
"Angle(X,GravityMean)"                                       
"Angle(Y,GravityMean)"                                       
"Angle(Z,GravityMean)"     