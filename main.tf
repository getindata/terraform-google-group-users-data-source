data "google_cloud_identity_group_lookup" "group" {
  group_key {
    id = var.group_email
  }
}
data "google_cloud_identity_group_memberships" "members" {
  group = data.google_cloud_identity_group_lookup.group.name
}
