variable "account_id" {
  type        = string
  description = "(String) Account ID to manage the zone resource in."
}

variable "zone_data" {
  type = map(object({
    name       = string
    jump_start = optional(bool, false)
    paused     = optional(bool, false)
    plan       = optional(string, "free")
    type       = optional(string, "full")
    subdomain_data = optional(map(object({
      name     = optional(string)
      value    = optional(string)
      type     = optional(string)
      ttl      = optional(number, 3600)
      comment  = optional(string)
      priority = optional(number)
    })))
  }))
  description = "(Required) Zone structure to create zones and sub-domains."
}