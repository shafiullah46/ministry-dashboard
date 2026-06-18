# 🏛️ Ministry of Planning — CDWP & ECNEC Interactive Dashboard

<div align="center">

![Dashboard Preview](docs/preview-banner.png)

[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
[![Chart.js](https://img.shields.io/badge/Chart.js-FF6384?style=for-the-badge&logo=chartdotjs&logoColor=white)](https://www.chartjs.org/)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)
[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-222222?style=for-the-badge&logo=github&logoColor=white)](https://pages.github.com/)

**A fully interactive, data-driven government dashboard for the Ministry of Planning, Development & Special Initiatives, Pakistan — presenting CDWP & ECNEC approved projects for the Annual Review Period 2025-26.**

[🚀 Live Demo](https://YOUR-USERNAME.github.io/ministry-dashboard/) • [📊 View Dashboard](index.html) • [🔐 Protected Version](index-protected.html)

</div>

---

## 📋 Table of Contents

- [About the Project](#-about-the-project)
- [Features](#-features)
- [Dashboard Sections](#-dashboard-sections)
- [Tech Stack](#-tech-stack)
- [Getting Started](#-getting-started)
- [Deployment (DevOps)](#-deployment-devops)
- [Project Structure](#-project-structure)
- [Security Features](#-security-features)
- [Data Overview](#-data-overview)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🎯 About the Project

This project is a **production-grade government ministry dashboard** built for the **Ministry of Planning, Development & Special Initiatives, Government of Pakistan**. It presents the Annual Progress Report data for CDWP (Central Development Working Party) and ECNEC (Executive Committee of the National Economic Council) approved projects during **1 April 2025 – 31 March 2026**.

The dashboard was designed to be presented to the **Federal Minister** and senior ministry officials, providing an at-a-glance view of:
- All approved development schemes with costs
- Sector-wise breakdown of Rs. 5,417 Billion in approved projects
- Project drill-down with detailed cost analysis
- Meeting schedules and approval timelines

---

## ✨ Features

| Feature | Description |
|--------|-------------|
| 📊 **Interactive Charts** | Sector-wise bar charts, doughnut charts, candlestick-style pipeline charts |
| 🔍 **Project Drill-down** | Click any project row to view full details in a modal panel |
| 🔎 **Live Search** | Real-time search across project names and sponsoring agencies |
| 🏷️ **Sector Filters** | One-click filtering by sector (Energy, Transport, Education, etc.) |
| 📁 **File Upload** | Upload Excel/Word/CSV files with animated progress feedback |
| 🔐 **Password Protection** | SHA-based password lock with attempt limiting and DevTools detection |
| 📱 **Responsive Design** | Works on desktop, tablet, and mobile |
| 🚫 **Copy Protection** | Right-click disable, keyboard shortcut blocking, DevTools detection |
| 🌐 **Zero Dependencies** | Single HTML file — no server, no database, no installation |

---

## 📑 Dashboard Sections

### 1. 📈 Overview
- 8 KPI summary cards (meetings, approvals, costs, pipeline)
- Sector-wise CDWP vs ECNEC scheme count (grouped bar chart)
- Approved cost comparison by sector
- CDWP and ECNEC cost share doughnut charts
- Quarterly pipeline candlestick-style chart
- Overall project disposition doughnut (709 total projects)

### 2. 🔨 CDWP Projects (116 Approved Schemes)
- Full searchable, filterable project table
- Sector filter buttons
- Click-to-detail modal with cost analysis bar
- Rs. 315.1 Billion total approved cost
- Horizontal bar charts (cost & count by sector)

### 3. 🏛️ ECNEC Projects (72 Approved Schemes)
- Full searchable, filterable project table
- Rs. 5,102 Billion total approved cost
- Same drill-down functionality as CDWP
- Horizontal bar charts per sector

### 4. 📋 Summary & Statistics
- Pending & Received schemes table (2025-26)
- Detail of schemes (Categories A, B, C)
- Complete sector-wise cost breakup table (Rs. Million)

### 5. 📅 Meeting Dates
- CDWP: 24 meetings timeline
- ECNEC: 8 meetings timeline
- Monthly frequency bar chart

---

## 🛠️ Tech Stack

```
Frontend:
├── HTML5          — Semantic structure
├── CSS3           — Custom design system, CSS variables, animations
├── Vanilla JS     — All interactivity, no frameworks needed
└── Chart.js 4.4.1 — All charts and visualizations

DevOps / Deployment:
├── GitHub         — Version control & source code management
├── GitHub Pages   — Free static hosting & CI/CD
├── GitHub Actions — Automated deployment pipeline
└── GitHub Releases — Version management
```

---

## 🚀 Getting Started

### Option 1: Direct Use (Simplest)
```bash
# Just download and open in any browser
# No installation needed!
open index.html
```

### Option 2: Clone the Repository
```bash
# Clone the repo
git clone https://github.com/YOUR-USERNAME/ministry-dashboard.git

# Navigate into the project
cd ministry-dashboard

# Open in browser
open index.html

# OR use a local server (recommended for development)
npx serve .
# OR
python3 -m http.server 8080
# Then open: http://localhost:8080
```

### Option 3: Fork & Deploy
1. Click **Fork** on this repository
2. Go to **Settings → Pages**
3. Set source to **main branch / root**
4. Your dashboard is live at: `https://YOUR-USERNAME.github.io/ministry-dashboard/`

---

## ⚙️ Deployment (DevOps)

### GitHub Actions — Automated CI/CD Pipeline

This project uses **GitHub Actions** for automated deployment to GitHub Pages.

```yaml
# .github/workflows/deploy.yml
# Every push to main → auto deploys to GitHub Pages
```

**Pipeline Steps:**
```
Push to main branch
       ↓
GitHub Actions triggered
       ↓
Validate HTML (htmlhint)
       ↓
Deploy to GitHub Pages
       ↓
Live at: https://YOUR-USERNAME.github.io/ministry-dashboard/
```

### Manual Deployment Commands
```bash
# Initialize git
git init
git add .
git commit -m "Initial dashboard release"

# Connect to GitHub
git remote add origin https://github.com/YOUR-USERNAME/ministry-dashboard.git
git branch -M main
git push -u origin main

# Enable GitHub Pages
# Settings → Pages → Source: main → Save
# Live in ~60 seconds!
```

### Versioning Strategy
```bash
# Tag a release
git tag -a v1.0.0 -m "Initial release — CDWP & ECNEC 2025-26"
git push origin v1.0.0

# Create GitHub Release
# Goes to: Releases → Draft new release → Select tag
```

---

## 📁 Project Structure

```
ministry-dashboard/
│
├── index.html                  # Main dashboard (public)
├── index-protected.html        # Password-protected version
├── README.md                   # This file
├── LICENSE                     # MIT License
│
├── docs/
│   ├── preview-banner.png      # Dashboard preview image
│   ├── architecture.md         # Technical architecture notes
│   └── data-dictionary.md      # Field definitions
│
├── screenshots/
│   ├── overview.png            # Overview page screenshot
│   ├── cdwp-projects.png       # CDWP page screenshot
│   ├── ecnec-projects.png      # ECNEC page screenshot
│   └── detail-modal.png        # Project detail modal
│
└── .github/
    └── workflows/
        └── deploy.yml          # GitHub Actions CI/CD pipeline
```

---

## 🔐 Security Features

| Protection | Implementation |
|-----------|---------------|
| Password Lock | Pre-access password screen with attempt limiting (5 max) |
| Brute Force Protection | Account lockout after 5 failed attempts |
| DevTools Detection | Monitors window size changes to detect open DevTools |
| Right-click Disabled | `contextmenu` event prevention |
| Keyboard Shortcuts Blocked | Ctrl+U, Ctrl+S, Ctrl+A, F12, Ctrl+Shift+I blocked |
| Text Selection Disabled | `selectstart` event prevention |
| Source Obfuscation | Dashboard content Base64 encoded inside protected wrapper |

---

## 📊 Data Overview

| Metric | Value |
|--------|-------|
| Reporting Period | 1 April 2025 – 31 March 2026 |
| CDWP Meetings | 24 |
| ECNEC Meetings | 8 |
| CDWP Approved Schemes | 116 |
| ECNEC Approved Schemes | 72 |
| Pending at ECNEC | 21 |
| Returned (Preliminary) | 271 |
| Under Appraisal | 226 |
| **Total CDWP Approved Cost** | **Rs. 315,104 Million** |
| **Total ECNEC Approved Cost** | **Rs. 5,102,052 Million** |
| **Combined Approved Cost** | **Rs. 5,417,156 Million (~Rs. 5.4 Trillion)** |

### Sectors Covered
`Energy` `Transport & Communications` `Higher Education` `Health` `Education` `Physical Planning & Housing` `Water Resources` `Environment` `Governance` `Information Technology` `Agriculture & Food` `Mass Media` `Industries & Commerce` `Social Welfare` `Manpower` `Devolution & Area Development`

---


---

## 🐳 Docker

### Pull from Docker Hub
```bash
docker pull YOUR-DOCKERHUB-USERNAME/ministry-dashboard:latest
```

### Run with Docker
```bash
# Run dashboard
docker run -d -p 8080:80 YOUR-DOCKERHUB-USERNAME/ministry-dashboard:latest

# Open in browser
# http://localhost:8080
```

### Run with Docker Compose
```bash
docker compose up -d
# http://localhost:8080
```

### Available Tags
| Tag | Description |
|-----|-------------|
| `latest` | Always latest version |
| `v1.0.0` | Stable release |
| `sha-xxxxxxx` | Specific commit |
| `YYYY-MM-DD` | Date-based tag |

### Platforms Supported
- `linux/amd64` — Windows, Linux
- `linux/arm64` — Mac M1/M2, Raspberry Pi

### Docker Hub
🔗 `hub.docker.com/r/YOUR-DOCKERHUB-USERNAME/ministry-dashboard`

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/NewFeature`)
3. Commit your Changes (`git commit -m 'Add NewFeature'`)
4. Push to the Branch (`git push origin feature/NewFeature`)
5. Open a Pull Request

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

---

## 👤 Author

**Your Name**
- LinkedIn: [linkedin.com/in/YOUR-PROFILE](https://linkedin.com/in/YOUR-PROFILE)
- GitHub: [@YOUR-USERNAME](https://github.com/YOUR-USERNAME)
- Email: your.email@example.com

---

## 🙏 Acknowledgements

- [Chart.js](https://www.chartjs.org/) — Beautiful charts
- [Font Awesome](https://fontawesome.com/) — Icons
- [GitHub Pages](https://pages.github.com/) — Free hosting
- Ministry of Planning, Development & Special Initiatives, Government of Pakistan

---

<div align="center">

**⭐ If this project helped you, please give it a star! ⭐**

Made with ❤️ for Government of Pakistan

</div>
