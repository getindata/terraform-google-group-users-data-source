locals {
  # Create map of group names without domain 
  groups = { for group in var.group_emails : split("@", group)[0] => group }

  # Create a map of users with groups assigned to them
  users_groups = transpose({ for group, details in module.google_group_members : group => details.users })

  # Create a map of users from deduplicated user list to avoid broadcasting of
  # fake changes due to changes in list ordering
  users_map = { for user_email, groups in local.users_groups : user_email => split("@", user_email)[0] }

  # Create a map of user emails, groups and user names assigned to them
  users_groups_map = { for user_email, groups in local.users_groups : user_email => {
    user_name = split("@", user_email)[0]
    groups    = groups
    }
  }
}
