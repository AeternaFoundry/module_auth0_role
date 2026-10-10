variable "roles" {
  description = <<EOT
Map of roles, attributes below
Required:
    - name
Optional:
    - description
    - owner_id
    - type
EOT

  type = map(object({
    name        = string
    description = optional(string)
    owner_id    = optional(string)
    type        = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.roles : (
        v.type == null || (contains(["tenant", "organization"], v.type))
      )
    ])
    error_message = "must be one of: \"tenant\", \"organization\""
  }
}

