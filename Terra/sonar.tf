provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "sonarqube" {
  name       = "sonarqube"
  repository = "https://SonarSource.github.io/helm-chart-sonarqube"
  chart      = "sonarqube"
  namespace  = "sonarqube"
  create_namespace = true

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "postgresql.enabled"
    value = "true"
  }

  set {
    name  = "persistence.enabled"
    value = "true"
  }
}