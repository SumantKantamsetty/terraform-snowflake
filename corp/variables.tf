variable "organization_name" {}
variable "account_name" {}
variable "user" {}
variable "password" {
  sensitive = true
}
variable "role" {}

variable "databases" {}
variable "schemas" {}

variable "roles" {}
variable "users" {}
variable "role_grants" {}

variable "database_grants" {}
variable "schema_grants" {}
variable "object_grants" {}
variable "future_grants" {}