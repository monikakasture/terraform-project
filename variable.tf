variable "vent_name" {
  default = "myvent"
  description = "name for vnet"
}


variable "environment" {
  description = "select from specific tfvars"
}

variable "size" {
  description = "size of VM"
}

variable "rg_name" {
  default = "resourcegroup1"
  description = "size of VM"
}
