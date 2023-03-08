test_that("date9 is formatted according to the format name that is provided", {
  input <- as.Date("2023-03-08")
  expected_output <- "08MAR2023"
  actual_output <- format_date(input, "Date9")

  expect_equal(actual_output, expected_output)
})

test_that("date7 is formatted according to the format name that is provided", {
  input <- as.Date("2023-03-08")
  expected_output <- "08MAR23"
  actual_output <- format_date(input, "Date7")

  expect_equal(actual_output, expected_output)
})

test_that("an error is raised when an invalid format is requested", {
  input <- as.Date("2023-03-08")
  expect_error(format_date(input, "Date4"))
})

