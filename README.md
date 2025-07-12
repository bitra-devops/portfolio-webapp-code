# 🎨 Portfolio WebApp - Personal Website

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=bitra-devops_portfolio-webapp-code&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=bitra-devops_portfolio-webapp-code)

> 🚀 A fully responsive, cleanly structured **portfolio website** to showcase skills, projects, resume, and social presence. Built with HTML, CSS, and JavaScript, and deployed using GitHub Actions.

---

## 📁 Project Structure

```
portfolio-webapp-code/
├── assets/                 # Icons, images, fonts
├── css/                    # Custom CSS and Tailwind styles
├── js/                     # JavaScript for animations, navbar, scroll
├── index.html              # Main HTML page
├── resume.pdf              # Replace with your updated resume
├── .github/workflows/     # CI workflows (SonarCloud scan)
├── .gitignore              # Ignore node_modules, sensitive files
└── README.md               # Project documentation
```

---

## 🚀 Features

✅ Fully responsive design (desktop, tablet, mobile)
✅ Modern UI with smooth transitions and animations
✅ Sections: About, Skills, Projects, Experience, Education, Contact
✅ Downloadable Resume
✅ External links to GitHub, LinkedIn, Email, etc.
✅ Easy customization of content (HTML/CSS-based)

---

## ✍️ Customization Guide

You can customize the following sections easily in `index.html`:

* **Name & Role**              → Update `<h1>` and `<h2>` tags
* **Phone/Email/Social Links** → Replace in the Contact section
* **Resume**                   → Replace `resume.pdf` file with your own
* **Images & Icons**           → Replace in `/assets/img/`
* **Projects**                 → Add/edit cards in the Projects section

To keep things modular, JavaScript handles navbar toggling, scroll animations, and interactive events.

---

## 🧪 CI/CD & Static Code Analysis

This project uses **GitHub Actions** to automatically analyze the source code for vulnerabilities and code smells using **SonarCloud**.

### ✅ CI Workflow Overview

* Triggers on every `push` or `pull_request` to the `main` branch
* Checks out code and runs **SonarCloud scanner** for analysis
* Detects:

  * Vulnerabilities
  * Code Smells
  * Maintainability issues

### 📁 Workflow File Location

`.github/workflows/vulnerability-check.yml`

### 🛠️ Sample Workflow File

```yaml
name: Portfolio-Vulnerability-Scan

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
  workflow_dispatch:

jobs:
  sonarcloud:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: SonarCloud Scan
        uses: SonarSource/sonarcloud-github-action@v2
        with:
          args: >
            -Dsonar.projectKey=santosh-bitra_portfolio-webapp-code
            -Dsonar.organization=santosh-bitra
            -Dsonar.sources=.
            -Dsonar.projectBaseDir=.
        env:
          SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}
```

### 🔐 Secrets Used

| Secret Name   | Purpose                                     |
| ------------- | ------------------------------------------- |
| `SONAR_TOKEN` | Authenticates GitHub Action with SonarCloud |

### 📈 SonarCloud Dashboard

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=bitra-devops_portfolio-webapp-code)](https://sonarcloud.io/summary/new_code?id=bitra-devops_portfolio-webapp-code)

🔗 [Click here to view full SonarCloud analysis](https://sonarcloud.io/summary/new_code?id=bitra-devops_portfolio-webapp-code)

---

## 🌐 Hosting / Deployment Guide

This project can be deployed easily on platforms like:

* **GitHub Pages**
* **Netlify**
* **Vercel**

### 🧾 Deploy via GitHub Pages

1. Push the code to the `main` branch
2. Go to **Settings > Pages**
3. Choose source as `main` and folder as `/root`
4. Site will be available at: `https://<your-username>.github.io/portfolio-webapp-code`

---

## 🔒 Security Practices

* Sensitive tokens like `SONAR_TOKEN` are kept in GitHub Secrets
* No direct secrets or passwords are committed
* HTML/JS code is scanned on every commit

---

## 💡 Future Enhancements

* Add light/dark mode toggle
* Use Next.js or React for dynamic rendering
* Connect contact form to Formspree or backend
* Add project filtering by tags

---

## 👨‍💻 Made by Santosh Bitra

DevOps | AWS | Terraform | GitHub Actions | SonarCloud | Kubernetes | Python
