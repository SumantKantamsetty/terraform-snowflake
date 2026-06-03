resource "snowflake_grant_privileges_to_account_role" "future_grants" {

  for_each = {
    for grant in var.future_grants :
    "${grant.role}-${grant.database}-${grant.schema}-${grant.object_type}" => grant
  }

  account_role_name = each.value.role
  privileges        = each.value.privileges

  on_schema_object {

    future {
      object_type_plural = each.value.object_type

      in_schema = "${each.value.database}.${each.value.schema}"
    }
  }
}