organization_name = "KGKOMTX"
account_name      = "CY36878"

user     = "TERRAFORM_SVC"
password = "%#4X1weVVv#3v2p#"

role = "TERRAFORM_ADMIN"

databases = {
  CORP_DB = {
    comment = "Corporate Database"
  }
}

schemas = [
  {
    database = "CORP_DB"
    schema   = "RAW"
  },
  {
    database = "CORP_DB"
    schema   = "CURATED"
  }
]

roles = [
  "ANALYST",
  "DEVELOPER",
  "DATA_ENGINEER"
]

users = {

  JOHN_DOE = {
    login_name = "john.doe@company.com"
    email      = "john.doe@company.com"
    role       = "ANALYST"
  }

  JANE_DOE = {
    login_name = "jane.doe@company.com"
    email      = "jane.doe@company.com"
    role       = "DEVELOPER"
  }
}

role_grants = []

database_grants = [

  {
    role       = "ANALYST"
    database   = "CORP_DB"
    privileges = ["USAGE"]
  }
]

schema_grants = [

  {
    role       = "ANALYST"
    database   = "CORP_DB"
    schema     = "RAW"
    privileges = ["USAGE"]
  }
]

object_grants = []

future_grants = [

  {
    role        = "ANALYST"
    database    = "CORP_DB"
    schema      = "RAW"
    object_type = "TABLES"
    privileges  = ["SELECT"]
  },

  {
    role        = "DEVELOPER"
    database    = "CORP_DB"
    schema      = "RAW"
    object_type = "TABLES"
    privileges  = [
      "SELECT",
      "INSERT",
      "UPDATE",
      "DELETE"
    ]
  }
]