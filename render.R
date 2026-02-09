#!/usr/bin/env Rscript

# Render R Markdown document
# Usage: Rscript render.R

cat("Rendering R Markdown document...\n")

rmarkdown::render(
  "src/03_CODE/sustainability-nba-sq-scoring-metrics.Rmd",
  output_format = "distill::distill_article"
)

cat("Done! Opening output file...\n")

# Open the HTML file in your default browser
output_file <- "src/03_CODE/sustainability-nba-sq-scoring-metrics.html"

# Check OS and open accordingly
if (Sys.info()["sysname"] == "Darwin") {  # macOS
  system(paste("open", output_file))
} else if (Sys.info()["sysname"] == "Linux") {
  system(paste("xdg-open", output_file))
} else if (Sys.info()["sysname"] == "Windows") {
  system(paste("start", output_file))
}

cat("Rendering complete!\n")
