output "roles_id" {
  description = "Map of id values across all roles, keyed the same as var.roles except keys with no id are omitted"
  value       = { for k, v in auth0_role.roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "roles_description" {
  description = "Map of description values across all roles, keyed the same as var.roles except keys with no description are omitted"
  value       = { for k, v in auth0_role.roles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "roles_name" {
  description = "Map of name values across all roles, keyed the same as var.roles except keys with no name are omitted"
  value       = { for k, v in auth0_role.roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "roles_owner_id" {
  description = "Map of owner_id values across all roles, keyed the same as var.roles except keys with no owner_id are omitted"
  value       = { for k, v in auth0_role.roles : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "roles_type" {
  description = "Map of type values across all roles, keyed the same as var.roles except keys with no type are omitted"
  value       = { for k, v in auth0_role.roles : k => v.type if v.type != null && length(v.type) > 0 }
}

