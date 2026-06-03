resource "snowflake_grant_privileges_to_account_role" "schema_grants" {

  for_each = {
    for grant in var.schema_grants :
    "${grant.role}-${grant.database}-${grant.schema}" => grant
  }

  account_role_name = each.value.role
  privileges        = each.value.privileges

  on_schema {
    schema_name = "${each.value.database}.${each.value.schema}"
  }
}