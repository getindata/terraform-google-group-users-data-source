# Simple Example

```terraform
module "terraform_google_group_users_data_source" {
  source      = "../../"
  group_email = "group-name@example.com"
}
```

## Usage

```shell
terraform init
terraform plan -out tfplan
terraform apply tfplan
```
