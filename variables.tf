variable "security_center_workspaces" {
  description = <<EOT
Map of security_center_workspaces, attributes below
Required:
    - scope
    - workspace_id
EOT

  type = map(object({
    scope        = string
    workspace_id = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.security_center_workspaces : (
        length(v.scope) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

