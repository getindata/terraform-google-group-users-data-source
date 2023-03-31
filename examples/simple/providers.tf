provider "null" {
  # Configuration options
}
provider "google" {
  impersonate_service_account = var.impersonate_sa
}
