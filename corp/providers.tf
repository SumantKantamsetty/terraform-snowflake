terraform {
  required_version = ">= 1.6.0"

  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 1.2"
    }
  }
}

provider "snowflake" {
  organization_name = var.organization_name
  account_name      = var.account_name

  user     = var.user
  password = var.password

  role = var.role
}