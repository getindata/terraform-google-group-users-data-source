terraform {
  required_version = ">= 0.15.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
    google = {
      source  = "hashicorp/google"
      version = "4.59.0"
    }
  }
}
