variable "resource_group_name" {
  description = "Resource group for AKS"
  type        = string
  default     = "myResourceGroup"  # Set default value here
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "myAKSCluster"  # Set default value here
}

variable "node_count" {
  description = "Number of AKS worker nodes"
  type        = number
  default     = 1
}