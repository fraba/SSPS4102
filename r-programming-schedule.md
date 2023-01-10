# Weekly schedule (R)

## Week 1

* Launching RStudio

* Installing packages

  * `install.packages(pkgs)`
  
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
  
    * `class(x)` 
  
  * Identifying number of observations
  
    * `dim(x)`

## Week 2

* Accessing variables inside dataframes

  * `x$var`

* Computing means

  * `mean(x)`

## Week 3

* Creating a ggplot

  * Using aesthetic mappings
  
    * `ggplot2::ggplot(x, aes(x = var_1, y = var_2))`

  * Choosing and using different geoms

    * Using geom_density
    
      * `ggplot2::ggplot(x, aes(x = var_1)) + ggplot2::geom_density()`
 
    * Using geom_histogram
    
      * `ggplot2::ggplot(x, aes(x = var_1)) + ggplot2::geom_histogram()`
 
    * Using geom_bar

    * Using geom_point

    * Using geom_smooth
  
    * Using geom_boxplot
  
    * Using geom_line
  
  * Using scales
  
  * Using facets
  
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
