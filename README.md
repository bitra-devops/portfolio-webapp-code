# 🌐 Portfolio WebApp

[![Build Status](https://github.com/bitra-devops/portfolio-webapp-code/actions/workflows/ci-cd.yml/badge.svg)](https://github.com/bitra-devops/portfolio-webapp-code/actions)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=bitra-devops_portfolio-webapp-code&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=bitra-devops_portfolio-webapp-code)
[![Docker Image](https://img.shields.io/badge/Dockerhub-Available-blue)](https://hub.docker.com/repository/docker/santoshbitradocker/my-portfolio-landingpage)

> A professional, CI/CD-enabled portfolio landing page built with modern DevOps tools and full automation.

---

## 🚀 Project Description

This is a **production-grade portfolio landing page** built with modern DevOps best practices. The app is continuously integrated, scanned, built, containerized, and published using GitHub Actions.

### 🔧 Features

- 🔹 Clean, customizable portfolio UI
- 🔹 OWASP dependency check
- 🔹 SonarCloud quality analysis
- 🔹 Trivy container vulnerability scan
- 🔹 DockerHub integration
- 🔹 GitHub Actions CI/CD pipeline

---

## 🧱 Tech Stack

/-------------|-----------------------------------\
| Layer       | Tech/Tool                         |
|-------------|-----------------------------------|
| Frontend    | HTML, CSS, JavaScript             |
| CI/CD       | GitHub Actions                    |
| Code Quality| SonarCloud, OWASP DC              |
| Container   | Docker, DockerHub                 |
| Security    | Trivy                             |
| Build Tools | Maven, Node.js, Java 17           |
\-------------|-----------------------------------/

---

## 📦 Build & Deployment Pipeline

1. ✅ GitHub Push/PR to `main`
2. 🔁 GitHub Actions pipeline:
   - Clean & checkout code
   - Init NPM
   - Run OWASP dependency-check
   - Run SonarCloud scan
   - Build Docker image
   - Scan with Trivy
   - Push to DockerHub

---

## 🐳 Docker Usage

### Build Locally

```bash
docker build -t santoshbitradocker/my-portfolio-landingpage .

Run Locally

docker run -d -p 8080:80 santoshbitradocker/my-portfolio-landingpage

Visit: http://localhost:8080

⸻

📊 SonarCloud
	•	Project: SonarCloud Dashboard
	•	Organization: bitra-devops

⸻

🔐 Secrets Used in CI/CD

Make sure the following secrets are configured in your GitHub repo:

Secret Name	Purpose
SONAR_TOKEN	SonarCloud authentication
DOCKERHUB_USERNAME	DockerHub username
DOCKERHUB_PASSWORD	DockerHub token/password
DOCKER_IMAGE	Docker image name (optional env)


⸻

🧠 Learning Goals

This project is designed to demonstrate:
	•	Full DevOps CI/CD automation
	•	Static code analysis integration
	•	Containerization and vulnerability scanning
	•	GitHub Actions pipeline design

⸻

🧑‍💻 Maintainer

Santosh Bitra

⸻

⭐ Star This Repo

If you found this helpful or insightful, please consider starring 🌟 the repo to support more DevOps-focused projects like this!