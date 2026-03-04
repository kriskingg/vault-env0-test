terraform {
  required_version = ">= 1.0"
}

output "test_secret" {
  value = var.TEST_SECRET
}