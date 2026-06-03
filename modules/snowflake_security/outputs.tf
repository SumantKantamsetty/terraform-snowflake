output "databases" {
  value = keys(snowflake_database.databases)
}

output "roles" {
  value = keys(snowflake_account_role.roles)
}

output "users" {
  value = keys(snowflake_user.users)
}