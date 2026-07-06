output "security_center_workspaces" {
  description = "All security_center_workspace resources"
  value       = azurerm_security_center_workspace.security_center_workspaces
}
output "security_center_workspaces_scope" {
  description = "List of scope values across all security_center_workspaces"
  value       = [for k, v in azurerm_security_center_workspace.security_center_workspaces : v.scope]
}
output "security_center_workspaces_workspace_id" {
  description = "List of workspace_id values across all security_center_workspaces"
  value       = [for k, v in azurerm_security_center_workspace.security_center_workspaces : v.workspace_id]
}

