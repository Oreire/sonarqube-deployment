variable "node_port" {
  description = "The port on which the SonarQube server is exposed"
  type        = number
  default     = 9000
}

variable "sonar_token" {
  description = "The token used to authenticate with SonarQube"
  type        = string
  sensitive   = true
}

variable "kube_config_path" {
  type    = string
  default = "~/.kube/config" # Optional fallback
}

