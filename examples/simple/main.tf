module "terraform_google_group_users_data_source" {
  source = "../../"
  parent = "customers/{customer_id}"
  group_email = "example@google.com"
}
