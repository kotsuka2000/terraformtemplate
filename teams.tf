resource "pagerduty_team" "team" {
  for_each = { for team_name in local.team_names : team_name => team_name }

  name = each.value
}