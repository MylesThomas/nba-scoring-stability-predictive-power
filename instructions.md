# Setup Instructions

## Prerequisites

Before you begin, ensure you have:
- **R** (version 4.0+): [Download](https://cran.r-project.org/)
- **pandoc**: Required for R Markdown rendering

### Install Pandoc

**macOS:**
```bash
brew install pandoc
```

**Other platforms:** https://pandoc.org/installing.html

**Verify installation:**
```bash
R --version          # Should show 4.0+
pandoc --version     # Should show 1.12.3+
```

---

## Quick Start

```bash
# 1. Clone the repository
git clone https://github.com/MylesThomas/nba-scoring-stability-predictive-power.git
cd nba-scoring-stability-predictive-power

# 2. Install required R packages
Rscript install_packages.R

# 3. Render the document
Rscript render.R
```

The render script will:
- Compile the R Markdown document
- Generate HTML output in `src/03_CODE/`
- Automatically open it in your browser

---

## Troubleshooting

### "pandoc version 1.12.3 or higher is required and was not found"
Install pandoc:
```bash
brew install pandoc  # macOS
```
Or download from: https://pandoc.org/installing.html

### "there is no package called 'package_name'"
The package failed to install. Try:
```bash
Rscript -e "install.packages('package_name')"
```

### Package installation fails with network errors
If downloads fail, try:
```bash
# Retry the installation
Rscript install_packages.R

# Or install manually in an R session
R
> install.packages("package_name")
```

### Rendering fails with "RStudio not running"
This error has been fixed. Update your RMD file - see [instructions.md history].

### Data files not found
Ensure input data files exist in `src/00_INPUT/`:
```bash
ls src/00_INPUT/
```

### Verbose rendering for debugging
```bash
Rscript -e "rmarkdown::render('src/03_CODE/sustainability-nba-sq-scoring-metrics.Rmd', verbose = TRUE)"
```

---

## Alternative Workflows

### Using RStudio (Original Workflow)

1. Open `src/03_CODE/sustainability-nba-sq-scoring-metrics.Rmd` in RStudio
2. Install packages via RStudio's package manager or `install.packages()`
3. Run → Run All to test
4. Knit → Knit to distill_article
5. Publish → Publish Document (for RPubs)

### Using Cursor/VSCode

1. Install the R extension for syntax highlighting
2. Run code chunks interactively by copying to an R terminal
3. Use `Rscript render.R` to generate the final document
4. Edit without needing RStudio open

### Manual Rendering

```bash
# Standard render
Rscript -e "rmarkdown::render('src/03_CODE/sustainability-nba-sq-scoring-metrics.Rmd')"

# With custom output location
Rscript -e "rmarkdown::render('src/03_CODE/sustainability-nba-sq-scoring-metrics.Rmd', output_dir = 'output/')"
```

---

## References

- [Distill for R Markdown](https://rstudio.github.io/distill/)
- [R Markdown Documentation](https://rmarkdown.rstudio.com/)
- [pandoc Installation](https://pandoc.org/installing.html)