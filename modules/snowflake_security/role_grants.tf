resource "snowflake_grant_account_role" "user_roles" {

  for_each = var.users

  role_name = each.value.role
  user_name = each.key
}

resource "snowflake_grant_account_role" "role_hierarchy" {

  for_each = {
    for grant in var.role_grants :
    "${grant.child_role}-${grant.parent_role}" => grant
  }

  role_name        = each.value.child_role
  parent_role_name = each.value.parent_role
}