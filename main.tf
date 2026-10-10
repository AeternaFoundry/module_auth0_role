resource "auth0_role" "roles" {
  for_each = var.roles

  name        = each.value.name
  description = each.value.description
  owner_id    = each.value.owner_id
  type        = each.value.type
}

