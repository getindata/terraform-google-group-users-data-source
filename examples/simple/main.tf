module "terraform_google_group_users_data_source" {
  source = "../../"
  group  = "example-group@google.com"
  parent = "customers/{customer_id}"
}
