data "google_cloud_identity_groups" "groups" {
  parent = var.parent
}
data "google_cloud_identity_group_memberships" "members" {
  group = local.search_in_a_map
}
