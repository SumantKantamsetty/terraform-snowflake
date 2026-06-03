resource "snowflake_database" "databases" {
  for_each = var.databases

  name    = each.key
  comment = each.value.comment
}