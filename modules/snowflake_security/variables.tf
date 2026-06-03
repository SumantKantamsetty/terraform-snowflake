variable "databases" {
  type = map(object({
    comment = optional(string, "")
  }))
  default = {}
}

variable "schemas" {
  type = list(object({
    database = string
    schema   = string
    comment  = optional(string, "")
  }))
  default = []
}

variable "roles" {
  type    = list(string)
  default = []
}

variable "users" {
  type = map(object({
    login_name = string
    email      = string
    role       = string
  }))
  default = {}
}

variable "role_grants" {
  type = list(object({
    child_role  = string
    parent_role = string
  }))
  default = []
}

variable "database_grants" {
  type = list(object({
    role       = string
    database   = string
    privileges = list(string)
  }))

  default = []
}

variable "schema_grants" {
  type = list(object({
    role       = string
    database   = string
    schema     = string
    privileges = list(string)
  }))

  default = []
}

variable "object_grants" {
  type = list(object({
    role        = string
    database    = string
    schema      = string
    object_type = string
    object_name = string
    privileges  = list(string)
  }))

  default = []
}

variable "future_grants" {
  type = list(object({
    role        = string
    database    = string
    schema      = string
    object_type = string
    privileges  = list(string)
  }))

  default = []
}