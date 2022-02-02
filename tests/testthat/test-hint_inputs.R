# Testing inputs for Hyperintersection distribution.

# If more than 2 urns, error issued.
test_that("No essential gene inputs works as intended",{
  expect_error(hint::phint(29, c(15, 8, 6), 23, vals = 2))
})

# Constraint 1 fail produces error.
test_that("No essential gene inputs works as intended",{
  expect_error(hint::phint(29, c(15, 35), 5, vals = 2))
})

# Constraint 2 fail produces error.
test_that("No essential gene inputs works as intended",{
  expect_error(hint::phint(29, c(15, 8), 30, vals = 2))
})

# Constraint 3 fail produces error: negative input.
test_that("No essential gene inputs works as intended",{
  expect_error(hint::phint(29, c(-1, 8), 30, vals = 2))
})

# Constraint 3 fail produces error: greater than n.
test_that("No essential gene inputs works as intended",{
  expect_error(hint::phint(29, c(30, 8), 30, vals = 2))
})
