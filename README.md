###README.md
####run_analysis.R

This Repo contains the R script named: "run_analysis.R".

This script creates a Tidy Dataset from the Data Set available at: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original Dataset, separated the observations into a train and test subset. 

Through this script we're able to merge both subsets, and add comprehensible labels to the columns and activities performed to get the readings. 

Only the variables that include a measure of a mean or std are included in the output. 

#####Important:

To run this script you need to download to your working directory the "features.txt" file and the "/test" and "/train" folders from the URL mentioned above. 

Alsy the R package "dplyr" is used, which will be instaled and loaded trhough the sript. 

Finally it will write a file named "tidyDataSet.txt" with the ouput. 

#### Variables

The only Variables thar are used to generate the ourput file are (This were selected because are the only variables that represent a mean or std, variables that use a mean or std as argument were ignored): 


1   tBodyAcc-mean()-X

2	tBodyAcc-mean()-Y

3	tBodyAcc-mean()-Z

4	tBodyAcc-std()-X

5	tBodyAcc-std()-Y

6	tBodyAcc-std()-Z

41	tGravityAcc-mean()-X

42	tGravityAcc-mean()-Y

43	tGravityAcc-mean()-Z

44	tGravityAcc-std()-X

45	tGravityAcc-std()-Y

46	tGravityAcc-std()-Z

81	tBodyAccJerk-mean()-X

82	tBodyAccJerk-mean()-Y

83	tBodyAccJerk-mean()-Z

84	tBodyAccJerk-std()-X

85	tBodyAccJerk-std()-Y

86	tBodyAccJerk-std()-Z

121	tBodyGyro-mean()-X

122	tBodyGyro-mean()-Y

123	tBodyGyro-mean()-Z

124	tBodyGyro-std()-X

125	tBodyGyro-std()-Y

126	tBodyGyro-std()-Z

161	tBodyGyroJerk-mean()-X

162	tBodyGyroJerk-mean()-Y

163	tBodyGyroJerk-mean()-Z

164	tBodyGyroJerk-std()-X

165	tBodyGyroJerk-std()-Y

166	tBodyGyroJerk-std()-Z

201	tBodyAccMag-mean()

202	tBodyAccMag-std()

214	tGravityAccMag-mean()

215	tGravityAccMag-std()

227	tBodyAccJerkMag-mean()

228	tBodyAccJerkMag-std()

240	tBodyGyroMag-mean()

241	tBodyGyroMag-std()

253	tBodyGyroJerkMag-mean()

254	tBodyGyroJerkMag-std()

266	fBodyAcc-mean()-X

267	fBodyAcc-mean()-Y

268	fBodyAcc-mean()-Z

269	fBodyAcc-std()-X

270	fBodyAcc-std()-Y

271	fBodyAcc-std()-Z

294	fBodyAcc-meanFreq()-X

295	fBodyAcc-meanFreq()-Y

296	fBodyAcc-meanFreq()-Z

345	fBodyAccJerk-mean()-X

346	fBodyAccJerk-mean()-Y

347	fBodyAccJerk-mean()-Z

348	fBodyAccJerk-std()-X

349	fBodyAccJerk-std()-Y

350	fBodyAccJerk-std()-Z

373	fBodyAccJerk-meanFreq()-X

374	fBodyAccJerk-meanFreq()-Y

375	fBodyAccJerk-meanFreq()-Z

424	fBodyGyro-mean()-X

425	fBodyGyro-mean()-Y

426	fBodyGyro-mean()-Z

427	fBodyGyro-std()-X

428	fBodyGyro-std()-Y

429	fBodyGyro-std()-Z

452	fBodyGyro-meanFreq()-X

453	fBodyGyro-meanFreq()-Y

454	fBodyGyro-meanFreq()-Z

503	fBodyAccMag-mean()

504	fBodyAccMag-std()

513	fBodyAccMag-meanFreq()

516	fBodyBodyAccJerkMag-mean()

517	fBodyBodyAccJerkMag-std()

526	fBodyBodyAccJerkMag-meanFreq()

529	fBodyBodyGyroMag-mean()

530	fBodyBodyGyroMag-std()

539	fBodyBodyGyroMag-meanFreq()

542	fBodyBodyGyroJerkMag-mean()

543	fBodyBodyGyroJerkMag-std()

552	fBodyBodyGyroJerkMag-meanFreq()