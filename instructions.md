Instructions:
1. Git clone the repository
- git clone 

2. Open the .Rmd file in RStudio

3. Download the necessary R libraries
- Note: If you have issues with library versions, follow the following iterative process:
    - Remove the library via `remove.packages()`
    - Restart R via Session -> Restart R
    - Download the library via `install.packages()`

4. Ensure that everything works:
- Run -> Run All

5. Deploy to the RPubs site:
- Knit -> Knit to distill_article (ensure the Knit directory is 'Document directory')
- Publish -> Publish Document

---

References:
1. [Distill for R Markdown](https://rstudio.github.io/distill/)