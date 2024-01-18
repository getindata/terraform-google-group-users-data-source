# Google Group Users Data Source Terraform Module

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![GCP](https://img.shields.io/badge/GoogleCloud-%234285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white)

<!--- Replace repository name -->
![License](https://badgen.net/github/license/getindata/terraform-google-group-users-data-source/)
![Release](https://badgen.net/github/release/getindata/terraform-google-group-users-data-source/)

<p align="center">
  <img height="150" src="https://getindata.com/img/logo.svg">
  <h3 align="center">We help companies turn their data into assets</h3>
</p>

---
Terraform module for listing users from Google Workspace group.

There is also a [groups_users](modules/groups-users/) wrapper submodule available, that allows listing of users from multiple Google Workspace groups.

## USAGE

```terraform
module "terraform_google_group_users_data_source" {
  source  = "getindata/group-users-data-source/google"
  group  = "example-group@google.com"
}
```

## EXAMPLES

- [Simple](examples/simple) - Basic usage of the module

<!-- BEGIN_TF_DOCS -->




## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_email"></a> [group\_email](#input\_group\_email) | (Required) The Group email queried for Members | `string` | n/a | yes |

## Modules

No modules.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_group_name"></a> [group\_name](#output\_group\_name) | Group name |
| <a name="output_service_accounts"></a> [service\_accounts](#output\_service\_accounts) | List of Service Accounts that belong to Google group |
| <a name="output_users"></a> [users](#output\_users) | List of Users that belong to Google group |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | ~> 5.4 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 5.4 |

## Resources

| Name | Type |
|------|------|
| [google_cloud_identity_group_lookup.group](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/cloud_identity_group_lookup) | data source |
| [google_cloud_identity_group_memberships.members](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/cloud_identity_group_memberships) | data source |
<!-- END_TF_DOCS -->

## CONTRIBUTING

Contributions are very welcomed!

Start by reviewing [contribution guide](CONTRIBUTING.md) and our [code of conduct](CODE_OF_CONDUCT.md). After that, start coding and ship your changes by creating a new PR.

## LICENSE

Apache 2 Licensed. See [LICENSE](LICENSE) for full details.

## AUTHORS

<!--- Replace repository name -->
<a href="https://github.com/getindata/terraform-google-group-users-data-source/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=getindata/terraform-module-template" />
</a>

Made with [contrib.rocks](https://contrib.rocks).
