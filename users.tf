resource "pagerduty_user" "user" {
  for_each = { for user in local.users : user.email => user }

  name  = "${each.value.first_name} ${each.value.last_name}"
  email = each.value.email
  role  = "limited_user"
}