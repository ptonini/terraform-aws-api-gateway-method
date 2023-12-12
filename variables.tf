variable "rest_api_id" {}

variable "resource_id" {}

variable "http_method" {
  default  = "ANY"
  nullable = false
}

variable "authorization" {
  default  = "NONE"
  nullable = false
}

variable "authorizer_id" {
  default = null
}

variable "request_parameters" {
  type    = any
  default = {}
}

variable "integrations" {
  type = map(object({
    type               = string
    uri                = string
    connection_type    = optional(string)
    connection_id      = optional(string)
    request_parameters = optional(any)
  }))
}
