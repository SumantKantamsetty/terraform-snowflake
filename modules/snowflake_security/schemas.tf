resource "snowflake_schema" "schemas" {

  for_each = {
    for s in var.schemas :
    "${s.database}.${s.schema}" => s
  }

  database = each.value.database
  name     = each.value.schema
  comment  = each.value.comment

  depends_on = [
    snowflake_database.databases
  ]
}