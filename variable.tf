variable "vent_name" {
  default = "myvent"
  description = "name for vnet"
}

variable "rg_name" {
  default = "myrgtest"
  description = "name for vnet"
}

variable "environment" {
  description = "select from specific tfvars"
}

variable "size" {
  description = "size of VM"
}
