output "sonarqube_url" {
  value = "http://localhost:${var.node_port}"
}

output "sonarqube_token" {
  value = var.sonar_token
  sensitive = true
}

