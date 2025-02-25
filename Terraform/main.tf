provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "todo-app-rg"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "todo-app-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "todoapp"

resource "null_resource" "provisioner" {
  provisioner "local-exec" {
    command = "ansible-playbook deploy.yml"
  }
}

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}