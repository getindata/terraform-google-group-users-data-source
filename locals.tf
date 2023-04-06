locals {
  groups_map      = { for g in data.google_cloud_identity_groups.groups.groups : g.group_key[0].id => g.name }
  search_in_a_map = lookup(local.groups_map, var.group_email)
}
