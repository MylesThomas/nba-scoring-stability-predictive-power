# NBA Scoring Metrics: Stability & Predictive Power

Comparing box score statistics and ShotQuality expectation metrics to understand the randomness of single game samples to improve prediction accuracy.

**Published Article:** https://rpubs.com/mylesthomas/predictive-power-nba-statistics

## Quick Start

```bash
git clone https://github.com/MylesThomas/nba-scoring-stability-predictive-power.git
cd nba-scoring-stability-predictive-power
Rscript install_packages.R  # Install dependencies
Rscript render.R            # Generate HTML report
```

**Need help?** See [`instructions.md`](instructions.md) for:
- Prerequisites (R, pandoc)
- Troubleshooting
- RStudio workflow
- Cursor/VSCode setup

## About

**ShotQuality Links:**
- Twitter: [@Shot_Quality](https://twitter.com/Shot_Quality)
- Betting: [@ShotQualityBets](https://twitter.com/ShotQualityBets) | [shotqualitybets.com](https://shotqualitybets.com)

## Project Structure
```
.
├── install_packages.R    # Install R dependencies
├── render.R              # Render analysis to HTML
├── instructions.md       # Detailed setup guide
└── src/
    ├── 00_INPUT/        # Input data
    └── 03_CODE/         # R Markdown analysis
```
