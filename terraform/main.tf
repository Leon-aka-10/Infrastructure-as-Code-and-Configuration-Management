resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = var.cluster_name

resource "null_resource" "provisioner" {
  provisioner "local-exec" {
    command = "ansible-playbook deploy.yml"
  }
}

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}