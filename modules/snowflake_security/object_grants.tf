resource "snowflake_grant_privileges_to_account_role" "object_grants" {

  for_each = {
    for grant in var.object_grants :
    "${grant.role}-${grant.database}-${grant.schema}-${grant.object_type}-${grant.object_name}" => grant
  }

  account_role_name = each.value.role
  privileges        = each.value.privileges

  on_schema_object {

    object_type = each.value.object_type

    object_name = "${each.value.database}.${each.value.schema}.${each.value.object_name}"
  }
}