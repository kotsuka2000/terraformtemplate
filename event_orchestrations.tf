resource "pagerduty_event_orchestration" "orchestration" {
  for_each = { for user in local.users : user.team_name => user }

  name        = "${each.key} Event Orchestration"
  description = "Event orchestration for ${each.key}"
  team        = pagerduty_team.team[each.key].id
}