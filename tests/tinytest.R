if (requireNamespace("tinytest", quietly = TRUE)) {
  tinytest::run_test_dir(
    system.file("tinytest", package = "CSpackage")
  )
}
