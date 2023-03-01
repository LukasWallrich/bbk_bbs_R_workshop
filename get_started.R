# Sourcing this will make sure that you have the tidyverse and other key packages installed.
# Note that I am using pacman rather than install.packages. This way, only packages
# that are missing are installed; install.packages also performs updates.

install.packages("pacman")

pacman::p_load(tidyverse, lavaan, lme4, easystats, modelsummary)

# Newer packages might not be on CRAN, the main server - like my package
# that we will be installing directly from GitHub
pacman::p_load_gh("lukaswallrich/timesaveR")