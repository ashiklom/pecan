#' Tests of radiative transfer models
context("SAIL models")

p <- defparam("pro4sail")
pout <- pro4sail(p)
test.dim <- c(2101,4)

test_that("Returns matrix", {
              expect_is(pout, "matrix")
})

test_that("Correct dimensions", {
              expect_equal(dim(pout), test.dim)
})

test_that("Don't return 0", {
              expect_true(all(colSums(pout) > 0))
})
