locals {
  # Create map of group names without domain 
  groups = { for group in var.group_emails : split("@", group)[0] => group }

  # Deduplicated user list
  users_list = distinct(flatten([for group in module.google_group_members : group.users]))

  # Create a map of users from deduplicated user list to avoid broadcasting of
  # fake changes due to changes in list ordering
  users_map = { for user in local.users_list : user => split("@", user)[0] }
}
