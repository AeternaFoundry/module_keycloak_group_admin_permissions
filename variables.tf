variable "group_admin_permissions" {
  description = <<EOT
Map of group_admin_permissions, attributes below
Required:
    - name
    - realm_id
    - scopes
Optional:
    - decision_strategy
    - description
    - group_ids
    - policies
EOT

  type = map(object({
    name              = string
    realm_id          = string
    scopes            = set(string)
    decision_strategy = optional(string)
    description       = optional(string)
    group_ids         = optional(set(string))
    policies          = optional(set(string))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

