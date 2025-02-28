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
  default = "~/.ssh/id_rsa.pub"
}