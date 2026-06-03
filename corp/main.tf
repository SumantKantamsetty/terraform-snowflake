module "snowflake_security" {

  source = "../modules/snowflake_security"

  databases = var.databases
  schemas   = var.schemas

  roles       = var.roles
  users       = var.users
  role_grants = var.role_grants

  database_grants = var.database_grants
  schema_grants   = var.schema_grants
  object_grants   = var.object_grants
  future_grants   = var.future_grants
}