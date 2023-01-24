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
    
  * `package::function_name(arguments)`

* Loading data

  * `read.csv(file)`

* Making sense of data (and dataframes)

  * Identifying types of variables
  
    * `class(object)` 
  
  * Identifying number of observations
  
    * `dim(object)` or `nrow(dataframe)` or `length(var)`

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
    
      * `ggplot2::ggplot(dataframe, aes(x = numbers, y = other_numbers)) + ggplot2::geom_point()`

    * Using geom_smooth
    
      * `ggplot2::ggplot(dataframe, aes(x = numbers, y = other_numbers)) + ggplot2::geom_smooth()`
  
    * Using geom_boxplot
    
      * `ggplot2::ggplot(dataframe, aes(x = factors, y = numbers)) + ggplot2::geom_boxplot()`
  
    * Using geom_line
    
      * `ggplot2::ggplot(dataframe, aes(x = numbers, y = other_numbers)) + ggplot2::geom_boxplot()`
  
  * Using scales
  
    * `ggplot2::ggplot(dataframe, aes(x = numbers, y = other_numbers)) + ggplot2::scale_y_continous()`
  
  * Using facets
  
    `ggplot2::ggplot(dataframe, aes(x = numbers, y = other_numbers)) + ggplot2::facet_grid()`
  
## Week 4

* Using pipes (%>%)

  * `dataframe %>% dplyr::mutate(price_per_carat = price / carat)`

* Manipulating dataframes with dplyr

  * Filtering observations
  
    * `dplyr::filter(dataframe, month == 1, day == 1)`
  
  * Selecting variables
  
    * `dplyr::select(dataframe, year, month, day)`
  
  * Creating new variables
  
    * `dplyr::mutate(dataframe, gain = dep_delay - arr_delay)`
  
  * Grouping observation
  
    * `dplyr::group_by(dataframe, year, month, day)`
  
  * Summarising variables
  
    * `dplyr::summarise(dataframe, flights = n())`
  
## Week 5

* Using relational operators

  * `3 == 3` or `TRUE != FALSE` 

* Creating variables with ifelse

  * `ifelse(var == "red", 1, 0)`

* Subsetting variables

  * `var[var == "red"]`

* Reporting with R Markdown

## Week 6

* Performing principal component analysis

  * `prcomp(matrix, scale = TRUE)`

* Performing t-SNE analysis  

  * `Rtsne::Rtsne(matrix, perplexity = 10)`

## Week 7

* Creating frequency tables

  * `table(factors)`

* Creating tables of proportions

  * `prop.table(table(factors))`
  
* Understanding missing values

  * `is.na(object)` OR is.null(object) 

* Handling missing values

  * `table(factors, exclude = NULL)` or `na.omit(var)`

* Creating two-way frequency tables

  * `table(factors, other_factors)`

* Creating two-way tables of proportions

  * `prop.table(table(factors, other_factors))`
  
* Computing descriptive statistics

  * Mean
  
    * `mean(numbers)
    
  * Median 
  
    * `median(numbers)`
    
  * Standard deviation
  
    * `sd(numbers)`
    
  * Variance
  
    * `var(numbers)`

* Computing correlations

  * `cor(numbers, other_numbers)`

## Week 8

* Taking a random sample

  * sample(numbers, size = 10)

* Taking a random sample from a normal distribution

  * `rnorm(10)`

* Computing probability of normal random variables

  * `pnorm(-1.96)`

* Using for loops

  * `for(i in 1:10) {print(i)}`

## Week 9

* Computing 95% confidence interval for sample means 

  * $[\bar{Y} - 1.96 \times \sqrt{\frac{var(Y)}{n}}]$

  * `mean(numbers) - 1.96 * sqrt(var(numbers) / length(numbers))` and `mean(numbers) + 1.96 * sqrt(var(numbers) / length(numbers))`

* Computing confidence interval for difference-in-means estimators

  * ``

* Hypothesis testing with the difference-in-means estimators

  * ``

## Week 10

* Fitting simple linear regression models

  * `lm(income ~ education)`

* Using natural logarithmic transformations

    * `log(numbers)`

* Computing confidence interval for predicted outcomes

* Hypothesis testing with estimated regression coefficients

* Reporting linear model results

    * `summary(object)`

## Week 11

* Fitting multiple linear regression models

  * `lm(income ~ education + parents_income)`

* Predicting using regression model results

  * `predict(object, newdata)`

## Week 12

* Fitting logistic regression models

  * `glm(binary ~ education + parents_income, family = 'binomial')`

* Analysing network data

* Analysing spatial data

## Week 13

* Tidying text data

* Analysing word frequencies

* Analysing sentiment of texts

* Analysing relationships between words

* Identifying topics in texts
