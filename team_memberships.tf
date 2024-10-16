resource "pagerduty_team_membership" "membership" {
  for_each = { for user in local.users : "${user.first_name} ${user.last_name}" => user }

  user_id = pagerduty_user.user[each.key].id
  team_id = pagerduty_team.team[each.value.team_name].id
  role    = "manager"
}