# Sourcing this will make sure that you have the tidyverse and other key packages installed.
# Note that I am using pacman rather than install.packages. This way, only packages
# that are missing are installed; install.packages also performs updates.

install.packages("pacman")
pacman::p_load(tidyverse, lavaan, lme4, easystats, modelsummary, interactions, sjPlot)

# Newer packages might not be on CRAN, the main server - like my package
# that we will be installing directly from GitHub
pacman::p_load_gh("lukaswallrich/timesaveR")

# This section will check your R version and warn you if you need to take action
if (as.numeric(R.version$major) < 4) {
  stop("Your R version is severely out of date. Best try to update before we start.")
} else if (!R.version$minor %in% c("3.2", "3.3", "4.0")) {
  warning("Your R version is out of date. I'd recommend updating very soon, but you should be fine for today")
} else if (R.version$minor != "4.0") {
  warning("Your R version is a bit of date. It's worth updating regularly to avoid issues")
}
