#!/usr/bin/env Rscript

# Install required R packages for NBA Scoring Stability project
# Usage: Rscript install_packages.R

cat("Installing required R packages...\n\n")

packages <- c(
  "rmarkdown",
  "distill",
  "tidyverse",
  "gt",
  "tidymodels",
  "ggthemes",
  "ggtext",
  "stringi",
  "here",
  "glue",
  "reshape2"
  # "styler"  # Optional: only needed for code formatting
)

cat("Packages to install:\n")
cat(paste0("  - ", packages, collapse = "\n"), "\n\n")

# Check which packages are already installed
installed <- packages %in% rownames(installed.packages())
to_install <- packages[!installed]

if (length(to_install) > 0) {
  cat("Installing missing packages:\n")
  cat(paste0("  - ", to_install, collapse = "\n"), "\n\n")
  
  install.packages(to_install, repos = "https://cloud.r-project.org/")
  
  cat("\n✓ Installation complete!\n\n")
} else {
  cat("✓ All packages are already installed!\n\n")
}

# Verify installation
cat("Verifying package installation...\n")
all_installed <- packages %in% rownames(installed.packages())

if (all(all_installed)) {
  cat("✓ All packages successfully installed and verified!\n")
} else {
  failed <- packages[!all_installed]
  cat("✗ Failed to install the following packages:\n")
  cat(paste0("  - ", failed, collapse = "\n"), "\n")
  cat("\nPlease try installing them manually in R.\n")
  quit(status = 1)
}
