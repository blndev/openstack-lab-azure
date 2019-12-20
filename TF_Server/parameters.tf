variable "servers" {
  default = 1
}

variable "createLoadbalancer" {
  default = 0
}

variable "postfix" {}
variable "deploymentname" {}
variable "subnet" {}
variable "location" {}
variable "resourceGroup" {}
variable "diag_storage_uri" {}

variable "tags" {type = "map"}

variable "machinesize" {
  default="Standard_D2s_V3"
}

variable "datadisk_gb" {
  default = 128
}

variable "sshUser" {
  default = "linux"
  description = "Username for connecting via SSH" 
}

variable "sshKey" {
  description = "the public key used to connect to the machines" 
}

output "machines" {
  value = "${azurerm_network_interface.nic.*.internal_dns_name_label}"
}
