module "google_group_members" {
  for_each = local.groups

  source = "../../"

  group_email = each.value
}
