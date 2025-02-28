variable "location" {
  default = "East US"
}

variable "vm_size" {
  default = "Standard_B2s"
}

variable "admin_user" {
  default = "azureuser"
}

variable "ssh_public_key" {
  default = "/home/azureuser/.ssh/id_rsa.pub"
}

variable "azure_subscription_id" {}
variable "azure_tenant_id" {}
