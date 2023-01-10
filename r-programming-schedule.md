# Weekly schedule (R)

## Week 1

* Launching RStudio

* Installing packages

  * `install.packages(packages)`
  
* Loading packages

  * `library(package)` or `require(package)`

* Running simple calculations

  * `1 + 2` or `2 - 3` or `3 * 4` or `4 / 5`     

* Creating objects

  * `hello <- "hi"` or `hello = "hi"`

* Using functions

  * `function_name(arguments)`

* Loading data

  * `read.csv(file)`

* Making sense of data (and dataframes)

  * Identifying types of variables
  
    * `class(object)` 
  
  * Identifying number of observations
  
    * `dim(object)`

## Week 2

* Accessing variables inside dataframes

  * `dataframe$var`

* Computing means

  * `mean(numbers)`

## Week 3

* Creating a ggplot

  * Using aesthetic mappings
  
    * `ggplot2::ggplot(dataframe, aes(x = numbers, y = factors))`

  * Choosing and using different geoms

    * Using geom_density
    
      * `ggplot2::ggplot(dataframe, aes(numbers)) + ggplot2::geom_density()`
 
    * Using geom_histogram
    
      * `ggplot2::ggplot(dataframe, aes(numbers)) + ggplot2::geom_histogram()`
 
    * Using geom_bar
    
      * `ggplot2::ggplot(dataframe, aes(x = factors, y = numbers)) + ggplot2::geom_bar()`

    * Using geom_point
    
      * `ggplot2::ggplot(dataframe, aes(x = numbers, y = numbers)) + ggplot2::geom_point()`

    * Using geom_smooth
    
      * `ggplot2::ggplot(dataframe, aes(x = numbers, y = numbers)) + ggplot2::geom_smooth()`
  
    * Using geom_boxplot
    
      * `ggplot2::ggplot(dataframe, aes(x = factors, y = numbers)) + ggplot2::geom_boxplot()`
  
    * Using geom_line
    
      * `ggplot2::ggplot(dataframe, aes(x = numbers, y = numbers)) + ggplot2::geom_boxplot()`
  
  * Using scales
  
    * `ggplot2::ggplot(dataframe, aes(x = numbers, y = numbers)) + ggplot2::scale_y_continous()`
  
  * Using facets
  
    `ggplot2::ggplot(dataframe, aes(x = numbers, y = numbers)) + ggplot2::facet_grid()`
  
## Week 4

* Using pipes

* Manipulating dataframes with dplyr

  * Filtering observations
  
  * Selecting variables
  
  * Creating new variables
  
  * Grouping observation
  
  * Summarising variables
  
## Week 5

* Using relational operators

* Creating variables with ifelse

* Subsetting variables

* Reporting with R Markdown

## Week 6

* Performing principal component analysis

* Performing t-SNE analysis  

## Week 7

* Creating frequency tables

* Creating tables of proportions

* Handling missing values

* Creating two-way frequency tables

* Creating two-way tables of proportions

* Computing correlations

## Week 8

* Taking a random sample

* Computing variance

* Taking a random sample from a normal distribution

* Computing probability of normal random variables

* Using for loops

## Week 9

* Computing confidence interval for sample means

* Computing confidence interval for difference-in-means estimators

* Hypothesis testing with the difference-in-means estimators

## Week 10

* Fitting simple linear regression models

* Using natural logarithmic transformations

* Computing confidence interval for predicted outcomes

* Hypothesis testing with estimated regression coefficients

* Reporting linear model results

## Week 11

* Fitting multiple linear regression models

* Predicting using regression model results


## Week 12

* Fitting logistic regression models

* Analysing network data

* Analysing spatial data

## Week 13

* Tidying text data

* Analysing word frequencies

* Analysing sentiment of texts

* Analysing relationships between words

* Identifying topics in texts
