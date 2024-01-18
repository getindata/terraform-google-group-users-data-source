# Groups-Users submodule Example

```terraform
module "terraform_google_group_users_data_source" {
  source = "../../modules/groups-users"
  group_emails = [
    "group-name@example.com",
    "another-group-name@example.com",
  ]
}
```

## Usage

```shell
terraform init
terraform plan -out tfplan
terraform apply tfplan
```
