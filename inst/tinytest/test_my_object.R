library(CSpackage)
obj <- new_my_object(1:5)

# Check the class.
expect_equal(class(obj), "my_object")

# Print
expect_silent(print(obj))

# Summary method
expect_true(inherits(summary(obj), "summary.my_object"))

# Plot method
expect_silent(plot(obj))

# Test as.data.frame method
df <- as.data.frame(new_my_object(1:3))

expect_equal(class(df), "data.frame")
expect_equal(names(df), "value")
expect_equal(df$value, 1:3)

