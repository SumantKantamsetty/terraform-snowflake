resource "snowflake_user" "users" {

  for_each = var.users

  name       = each.key
  login_name = each.value.login_name
  email      = each.value.email

  disabled = false
}