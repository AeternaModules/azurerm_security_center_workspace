output "security_center_workspaces_id" {
  description = "Map of id values across all security_center_workspaces, keyed the same as var.security_center_workspaces"
  value       = { for k, v in azurerm_security_center_workspace.security_center_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_center_workspaces_scope" {
  description = "Map of scope values across all security_center_workspaces, keyed the same as var.security_center_workspaces"
  value       = { for k, v in azurerm_security_center_workspace.security_center_workspaces : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "security_center_workspaces_workspace_id" {
  description = "Map of workspace_id values across all security_center_workspaces, keyed the same as var.security_center_workspaces"
  value       = { for k, v in azurerm_security_center_workspace.security_center_workspaces : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

