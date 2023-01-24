# Weekly schedule (R)

If not otherwise indicated, you can run each command below in R by creating these objects ...

```

packages <- c("tidyverse", "Rtsne", "igraph", "tidytext", "sp")

package <- sample(packages, 1)
  
numbers <- sample(1:1000, 100)

other_numbers <- sample(1:1000, 100)

factors <- factor(sample(c("red","blue"), 100, replace = T))

other_factors <- factor(sample(c("green","yellow"), 100, replace = T))

dataframe <- data.frame(numbers, other_numbers, factors, other_factors)
  
matrix <- cbind(numbers, other_numbers)

```

and installing/loading these packages first ...

```

install.packages(packages)

lapply(packages, require, character.only = TRUE)

```


## Week 1

* Launching RStudio

* Installing packages

  * `install.packages(packages)`
  
* Loading packages

  * `library(package)` or 
  
  * `require(package)`

* Running simple calculations

  * `1 + 2` and 
  
  * `2 - 3` and 
  
  * `3 * 4` and 
  
  * `4 / 5`     

* Creating objects

  * `hello <- "hi"` or `hello = "hi"`

* Using functions

  * `function_name(arguments)` [don't run]
    
  * `package::function_name(arguments)` [don't run]

* Loading data

  * `read.csv(file)` [don't run]

* Making sense of data (and data *vector*, *matrices*, *data frames*)

  * Identifying type of R object
  
    * `class(dataframe)` 

  * Identifying length of vector
    
    * `length(numbers)`
  
  * Identifying number of rows (observations)
    
    * `nrow(dataframe)`
    
  * Identifying number of columns
  
    * `ncol(matrix)`
    
  * Identifying number of rows and columns
    
    * `dim(matrix)`
    

## Week 2

* Accessing variables inside dataframes

  * `dataframe$numbers`

* Computing means

  * `mean(numbers)`

## Week 3

* Creating a ggplot with ggplot2

  * Using aesthetic mappings
  
    * `ggplot2::ggplot(dataframe, aes(x = numbers, y = factors))`

  * Choosing and using different geoms

    * Using geom_density
    
      * `ggplot(dataframe, aes(numbers)) + ggplot2::geom_density()`
 
    * Using geom_histogram
    
      * `ggplot(dataframe, aes(numbers)) + geom_histogram()`
 
    * Using geom_bar
    
      * `ggplot(dataframe, aes(x = factors)) + geom_bar()`

    * Using geom_point
    
      * `ggplot(dataframe, aes(x = numbers, y = other_numbers)) + geom_point()`

    * Using geom_smooth
    
      * `ggplot(dataframe, aes(x = numbers, y = other_numbers)) + geom_smooth()`
  
    * Using geom_boxplot
    
      * `ggplot(dataframe, aes(x = factors, y = numbers)) + geom_boxplot()`
  
    * Using geom_line
    
      * `ggplot(dataframe, aes(x = numbers, y = other_numbers)) + geom_line()`
  
  * Using scales
  
    * `ggplot(dataframe, aes(x = numbers, y = other_numbers)) + scale_y_continuous()`
  
  * Using facets
  
    `ggplot(dataframe, aes(x = numbers, y = other_numbers)) + facet_grid()`
  
## Week 4

* Using pipes (%>%)

  * `dataframe %>% dplyr::mutate(division = numbers / other_numbers)`

* Manipulating dataframes with dplyr

  * Filtering observations
  
    * `dplyr::filter(dataframe, numbers > 50, factors == "red")`
  
  * Selecting variables
  
    * `dplyr::select(dataframe, numbers, factors)`
  
  * Creating new variables
  
    * `dplyr::mutate(dataframe, division = numbers / other_numbers)`
  
  * Grouping observation
  
    * `dplyr::group_by(dataframe, factors)`
  
  * Summarising variables
  
    * `dplyr::summarise(dataframe, n = n())`
  
## Week 5

* Using relational operators

  * `3 == 3` and
  
  * `TRUE != FALSE` and
  
  * `3 < 4` and
  
  * `4 > 3`

* Creating variables with ifelse

  * `ifelse(factors == "red", 1, 0)`

* Subsetting variables

  * `numbers[numbers > 50]`

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

  * `is.na(factors)` and 
  
  * `is.null(numbers)`

* Handling missing values

  * `table(factors, exclude = NULL)` and
  
  * `na.omit(factors)`

* Creating two-way frequency tables

  * `table(factors, other_factors)`

* Creating two-way tables of proportions

  * `prop.table(table(factors, other_factors))`
  
* Computing descriptive statistics

  * Mean
  
    * `mean(numbers)`
    
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

  * `sample(numbers, size = 10)`

* Taking a random sample from a normal distribution

  * `rnorm(10)`

* Computing probability of normal random variables

  * `pnorm(-1.96)`

* Using for loops

  * `for(i in 1:10) {print(i)}`
  
* Computing absolute value

  * `abs(-10)`

## Week 9

* Computing 95% confidence interval for sample means 

  * `mean(numbers) - 1.96 * sqrt(var(numbers) / length(numbers))` and 
  
  * `mean(numbers) + 1.96 * sqrt(var(numbers) / length(numbers))`

* Computing 95% confidence interval for difference-in-means estimators

  * `mean(numbers) - mean(other_numbers) - 1.96 * sqrt(var(numbers) / length(numbers) + var(other_numbers) / length(other_numbers))` and 
  
  * `mean(numbers) - mean(other_numbers) + 1.96 * sqrt(var(numbers) / length(numbers) + var(other_numbers) / length(other_numbers))`  

* Hypothesis testing with the difference-in-means estimators

  * `z_obs <- (mean(numbers) - mean(other_numbers)) / sqrt(var(numbers) / length(numbers) + var(other_numbers) / length(other_numbers))` and
  
  * `2 * pnorm(-abs(z_obs))`

## Week 10

* Fitting simple linear regression models

  * `fit <- lm(numbers ~ other_numbers, data = dataframe)`

* Using natural logarithmic transformations

    * `log(numbers)` or
    
    * `lm(log(numbers) ~ other_numbers, data = dataframe)` or

* Hypothesis testing with estimated regression coefficients

  * `summary(fit)$coef`

* Reporting linear model results

  * `summary(fit)`

## Week 11

* Fitting multiple linear regression models

  * `lm(numbers ~ other_numbers + factors + other_factors)`

* Computing confidence interval for predicted outcomes

  * `predict(fit, newdata = data.frame(other_numbers = 100), interval = "confidence")`

## Week 12

* Fitting logistic regression models

  * `glm(factors ~ numbers + other_numbers, family = 'binomial')`
  
## Advanced topics (Week 12 and 13)

* Analysing network data

  * Loading network data and creating networks
  
  * Visualising networks
  
  * Computing network statistics

* Analysing spatial data

  * Loading spatial data
  
  * Visualising spatial data 

* Analysing text data

  * Tidying text data

  * Analysing word frequencies

  * Analysing sentiment of texts

  * Analysing relationships between words

  * Identifying topics in texts
