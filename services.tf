resource "pagerduty_service" "service" {
  for_each = { for service in local.services : service.service_name => service }

  name                = each.value.service_name
  description         = each.value.service_description
  escalation_policy   = pagerduty_escalation_policy.policy[each.value.team_name].id
}