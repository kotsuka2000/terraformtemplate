resource "pagerduty_event_orchestration" "event_orchestration" {
  for_each = { for team_name in local.team_names : team_name => team_name }

  name        = "${each.value} Event Orchestration"
  description = "Event orchestration for ${each.value}"
  team        = pagerduty_team.team[each.value].id
}

// This one is if you wanna create a separate integration to the default
//resource "pagerduty_event_orchestration_integration" "integration" {
//  for_each = pagerduty_event_orchestration.event_orchestration
//
// event_orchestration = each.value.id
//  label               = "${each.key} Integration"
//}