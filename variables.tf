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
  # --- Unconfirmed validation candidates, derived from azurerm_security_center_workspace's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: scope
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
}

