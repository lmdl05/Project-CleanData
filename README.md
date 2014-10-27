###README.md
####run_analysis.R

This Repo contains the R script named: "run_analysis.R".

This script creates a Tidy Dataset from the Data Set available at: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original Dataset, separated the observations into a train and test subset. 

Through this script we're able to merge both subsets, and add comprehensible labels to the columns and activities performed to get the readings. 

Only the variables that include a measure of a mean or std are included in the output. 

######Important:

To run this script you need to download to your working directory the "features.txt" file and the "/test" and "/train" folders from the URL mentioned above. 

Alsy the R package "dplyr" is used, which will be instaled and loaded trhough the sript. 

Finally it will write a file named "tidyDataSet.txt" with the ouput. 

