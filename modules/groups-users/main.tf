module "google_group_members" {
  for_each = module.this.enabled ? local.groups : {}

  source = "../../"

  group_email = each.value
}
