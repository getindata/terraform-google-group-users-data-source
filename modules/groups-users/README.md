# Groups Users in Google Group Users Data Source Terraform Module

This submodule is a wrapper for `group-users-data-source` module that allows to retrieve users from multiple Google Workspace groups.

## USAGE

```terraform
module "groups_users" {
  source  = "getindata/group-users-data-source/google//modules/groups_users"
  
  group_emails  = [
    "example-group@google.com",
    "test-group@google.com",
  ]
}
```

<!-- BEGIN_TF_DOCS -->




## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_emails"></a> [group\_emails](#input\_group\_emails) | List of Google Workspace Group emails from which users will be retrieved | `list(string)` | n/a | yes |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_google_group_members"></a> [google\_group\_members](#module\_google\_group\_members) | ../../ | n/a |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_group_members"></a> [group\_members](#output\_group\_members) | Map of google group details and its members |
| <a name="output_users"></a> [users](#output\_users) | Deduplicated map of google group members (users) in format { email => username } |
| <a name="output_users_groups"></a> [users\_groups](#output\_users\_groups) | Deduplicated map of google group members (users) in format { email => {user\_name = username, groups = list(groups)}} |

## Providers

No providers.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |

## Resources

No resources.
<!-- END_TF_DOCS -->
