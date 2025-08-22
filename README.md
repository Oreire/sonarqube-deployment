# sonarqube-deployment
Integration of SonarQube with CICD Workflows

# 🛡️ SonarQube DevSecOps Pipeline with Kubernetes, Terraform & GitHub Actions

This project demonstrates a secure, automated DevSecOps pipeline using:

- **SonarQube** for static code analysis
- **Kubernetes (Docker Desktop)** for container orchestration
- **Terraform** for infrastructure-as-code deployment
- **Self-hosted GitHub Actions runner** for CI/CD automation


## 📦 Architecture Overview


GitHub Repo → Self-Hosted Runner → SonarScanner → Kubernetes → SonarQube Pod → PostgreSQL


🚀 Setup Instructions

1. Prerequisites

• Docker Desktop (with Kubernetes enabled)
• Terraform CLI
• Helm CLI
• GitHub CLI (optional)
• Self-hosted GitHub Actions runner (Linux VM or container)


2. Deploy SonarQube via Terraform

terraform init
terraform apply


This provisions SonarQube using Helm in the `sonarqube` namespace.

3. Access SonarQube

kubectl get svc -n sonarqube


Visit `http://localhost:<NodePort>` in your browser.

---

🤖 GitHub Actions Workflow

name: SonarQube Scan

on:
  push:
    branches: [ main ]

jobs:
  scan:
    runs-on: self-hosted
    steps:
      - uses: actions/checkout@v3
      - name: Run SonarQube Scan
        run: |
          sonar-scanner \
            -Dsonar.projectKey=my-project \
            -Dsonar.sources=. \
            -Dsonar.host.url=http://localhost:<NodePort> \
            -Dsonar.login=<your-token>


---

🔐 Security & Governance

• Quality Gates block insecure code
• Static analysis enforces secure coding standards
• Infrastructure-as-Code ensures reproducibility and auditability


---

👤 Author

Ayomide Ajayi
Educator-Technologist | DevOps Practitioner | Safeguarding-Aware Innovator
📍 Based in West Midlands, UK
🔗 LinkedIn | GitHub

---

📄 License

MIT License
