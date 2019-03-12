context("test-colors")

test_that("col2rgb", {
  expect_col2rgb <- function(hex, rgb) {
    rgb <- setNames(rgb, c("red", "green", "blue"))
    expect_equal(col2rgb(hex), rgb)
  }
  expect_col2rgb("#08f", col2rgb("#0088ff"))
  expect_col2rgb("#282828", c(40, 40, 40))
  expect_col2rgb("#fff", c(255, 255, 255))
  expect_col2rgb("#808080", c(128, 128, 128))
  expect_error(col2rgb("#80"))
  expect_error(col2rgb("#8097"))
})