# SSPS4102 Assignment 1: Data visualisation and communication exercise

* **Data file** [r7_merged_data_34ctry.release.sav](r7_merged_data_34ctry.release.sav)

* **Codebook** [r7_merged.codebook_final_14dec20-1.pdf](r7_merged.codebook_final_14dec20-1.pdf)

## General task 

Use survey data from 2019 Round 7 of the [Afrobarometer](https://www.afrobarometer.org/data/merged-data/) (34 countries) to study

a. the support for democracy and 

b. confidence in government institutions across Africa. 

## Submission guidelines

Produce a PDF report based on your analysis using the R markdown document (.Rmd) template provided. 

For this assignment your are expected to submit:

1. **Your report** Render your report from the source .Rmd document. 

2. **Your R project folder** Compress your project folder, which is expected to include:

    2.1. **Your .Rmd document**;
  
    2.2. **The data file**;
  
    2.3. **Your .Rproj file**.

### Subtasks

Create two indices:

1. A *support for democracy index* named in your code `support_demo_index`, and 

2. a *confidence in government institutions index* named in your code `confidence_govt_index`.

For each index, 

* Identify, list and discuss the variables that made up the index. In your discussion, mention the types of the variables you are using (e.g. binary, categorical, continuous) and discuss any transformation you applied to the variables while constructing your indices.

* Construct two different versions of the indices by 

    * averaging your variables (in your code `support_demo_index.avg` and `confidence_govt_index.avg`); and
    
    * applying PCA to the same variables and using the same transformation (in your code `support_demo_index.pca` and `confidence_govt_index.pca`)
  
3. Visualise your indices and their variation across countries? 

## Report

1. Describe  raw  variables  used  for  making  indices  using  appropriate  descriptive  statistics  (min, mean, median, st.deviation, max, number of observations) and graphs

2. Briefly  describe  the  ideas  behind  the  two  approaches  (averaging  and  PCA)  to  index  construction. What do they have in common? How are they different?

3. Describe variable transformations you applied for constructing your indices via averaging. Describe (using plots and words) the distribution of the 

    3.1 support for democracy and 
    
    3.2 confidence  in  social  institutions  –  for  each  country  separately.  
    
    Do  they  look  the  same  across countries? 

4. Describe  the  quality  of  your  PCA  indices  using  correlations  between  the  index  and  the  original variables and the proportion of total variance explained. Use plots and words to describe  the  distribution  of  the  

    4.1 support  for  democracy  and 
    
    4.2 confidence  in  social  institutions – for each country separately. 
    
    Do they look the same across countries?
    
    
5. Comment  on  the  similarity/dissimilarity  of  the  data  analysis  results  depending  on  the choice of the index. Use the correlation coefficients between PCA and average indices to justify your comment.

6. Conclude with a general comment on support for democracy and confidence in institutions in these three countries. 

### R programming tips

To import the  SPSS data files (.sav) in your R session you can do

```
library(haven)
r7_merged_data_34ctry_release <- read_sav("assessment/r7_merged_data_34ctry.release.sav")
```

To remove all the records with missing values (`NA`) you can do

```
library(tidyverse)
a1_data <- 
  a1_data %>% tidyr::drop_na()
  
```

For row-wise operations

```
dataframe %>%  
  dplyr::rowwise() %>% 
  dplyr::mutate(index = mean(c(x, y, z)))
```
