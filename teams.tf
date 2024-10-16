resource "pagerduty_team" "team" {
  for_each = { for user in local.users : user.team_name => user }

  name = each.key
}