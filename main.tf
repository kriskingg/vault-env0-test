terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 4.0"
    }
  }
}

variable "TEST_SECRET" {
  type = string
}

output "test_secret" {
  value = var.TEST_SECRET
}