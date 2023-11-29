# Install and load pkgdown package
if (!requireNamespace("pkgdown", quietly = TRUE)) {
  install.packages("pkgdown")
}
library(pkgdown)

# Build documentation and website
pkgdown::build_site()
