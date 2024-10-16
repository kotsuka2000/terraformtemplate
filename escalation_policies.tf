resource "pagerduty_escalation_policy" "policy" {
  for_each = { for user in local.users : user.team_name => user }

  name = "${each.key} Escalation Policy"

  rule {
    escalation_delay_in_minutes = 30

    target {
      type = "user_reference"
      id   = pagerduty_user.user[each.value.email].id
    }
  }
}