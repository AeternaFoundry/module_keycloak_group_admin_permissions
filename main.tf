resource "keycloak_group_admin_permissions" "group_admin_permissions" {
  for_each = var.group_admin_permissions

  name              = each.value.name
  realm_id          = each.value.realm_id
  scopes            = each.value.scopes
  decision_strategy = each.value.decision_strategy
  description       = each.value.description
  group_ids         = each.value.group_ids
  policies          = each.value.policies
}

