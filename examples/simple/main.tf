module "terraform_google_group_users_data_source" {
  source       =  "../../"
  group_email  =  "example-group@google.com"
  parent       =  "customers/{customer_id}"
}
