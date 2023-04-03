output "users" {
  value       = [for u in data.google_cloud_identity_group_memberships.members.memberships : u.preferred_member_key[0].id]
  description = "List of Users from Google group"
}
