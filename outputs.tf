output "users" {
  value       = [for u in data.google_cloud_identity_group_memberships.members.memberships : u.preferred_member_key[0].id if u.type == "USER"]
  description = "List of Users that belong to Google group"
}

output "service_accounts" {
  value       = [for u in data.google_cloud_identity_group_memberships.members.memberships : u.preferred_member_key[0].id if u.type == "SERVICE_ACCOUNT"]
  description = "List of Service Accounts that belong to Google group"
}

output "group_name" {
  value       = data.google_cloud_identity_group_lookup.group.name
  description = "Group name"
}
