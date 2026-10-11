variable "project_share_groups" {
  description = <<EOT
Map of project_share_groups, attributes below
Required:
    - group_access
    - group_id
    - project
Optional:
    - expires_at
EOT

  type = map(object({
    group_access = string
    group_id     = number
    project      = string
    expires_at   = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

