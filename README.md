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


GOLANG
package main

import (
	"fmt"
	"net/http"
)

func portfolioHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, `
		<html>
			<head><title>Ayomide Ajayi - Portfolio</title></head>
			<body>
				<h1>Welcome to Ayomide's Portfolio</h1>
				<p><strong>Name:</strong> John Doe</p>
				<p><strong>Age:</strong> 30</p>
				<p><strong>Student:</strong> false</p>
				<p><strong>Height:</strong> 5.9</p>
				<p><strong>Weight:</strong> 160.5</p>
				<p><strong>Grades:</strong> 90, 85, 88</p>
			</body>
		</html>
	`)
}

func main() {
	http.HandleFunc("/", portfolioHandler)
	fmt.Println("Server running on port 8080...")
	http.ListenAndServe(":8080", nil)
}

