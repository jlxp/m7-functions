# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  difference <- abs(length(a) - length(b))
  difference.string <- paste("The difference in lengths is", difference)
  return (difference.string)
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3), 1:100)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  difference <- length(a) - length(b)
  if (difference > 0) {
    sentence <- paste("Your first vector is longer by", difference, "elements")
  } else {
    sentence <- paste("Your second vector is longer by", -difference, "elements")
  }
  return(sentence)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2,3,4,5,6), 1:200)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(a, b) {
  difference <- length(a) - length(b)
  if (difference > 0) {
    sentence <- paste("Your first vector is longer by", difference, "elements")
  } else {
    sentence <- paste("Your second vector is longer by", -difference, "elements")
  }
  return(sentence)
}