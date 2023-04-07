output "users" {
  value       = [for u in data.google_cloud_identity_group_memberships.members.memberships : u.preferred_member_key[0].id]
  description = "List of Users from Google group"
}
output "group_name" {
  value       = one([for g in data.google_cloud_identity_groups.groups.groups : g.group_key[0].id if g.name == local.group_id])
  description = "Group name"
}
