# Example configuration of terraform providers

terraform {
  required_version = ">= 0.15.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.59.0"
    }
  }
}
