data "external" "users" {
  program = ["python3", "${path.module}/read_csv.py", "${path.module}/users.csv"]
}

locals {
  users = jsondecode(data.external.users.result["users"])
  team_names = distinct([for user in local.users : user.team_name])
}