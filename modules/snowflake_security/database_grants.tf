resource "snowflake_grant_privileges_to_account_role" "database_grants" {

  for_each = {
    for grant in var.database_grants :
    "${grant.role}-${grant.database}" => grant
  }

  account_role_name = each.value.role
  privileges        = each.value.privileges

  on_account_object {
    object_type = "DATABASE"
    object_name = each.value.database
  }
}