terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 4.0"
    }
  }
}

provider "vault" {
  skip_child_token = true
}

data "vault_kv_secret_v2" "test" {
  mount = "kv"
  name  = "test"
  namespace = "test-namespace"
}

output "test_secret" {
  value     = data.vault_kv_secret_v2.test.data["foo"]
  sensitive = true
}