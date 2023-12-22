output "group_members" {
  value       = module.google_group_members
  description = "Map of google group details and its members"
}

output "users" {
  value       = local.users_map
  description = "Deduplicated map of google group members (users) in format { email => username }"
}
