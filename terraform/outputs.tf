output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "aks_rg" {
  value = azurerm_resource_group.aks.name
}