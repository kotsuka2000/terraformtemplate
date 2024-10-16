output "user_ids" {
  value = [for user in pagerduty_user.user : user.id]
}

output "team_ids" {
  value = [for team in pagerduty_team.team : team.id]
}

output "team_membership_ids" {
  value = [for membership in pagerduty_team_membership.membership : membership.id]
}

output "escalation_policy_ids" {
  value = [for policy in pagerduty_escalation_policy.policy : policy.id]
}

output "service_ids" {
  value = [for service in pagerduty_service.service : service.id]
}

output "orchestration_ids" {
  value = [for orchestration in pagerduty_event_orchestration.orchestration : orchestration.id]
}