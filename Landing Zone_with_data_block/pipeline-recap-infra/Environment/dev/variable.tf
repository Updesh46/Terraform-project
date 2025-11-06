variable "resource" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}

variable "vnet" {
  type = map(object({
    vnet_name     = string
    location      = string
    rg_name       = string
    address_space = list(string)
    subnet = optional(map(object({
      name             = string
      address_prefixes = list(string)
    })))
  }))
}

variable "publicip" {
  type = map(object({
    pip_name          = string
    rg_name           = string
    location          = string
    allocation_method = string
  }))
}

variable "virtual_machine" {
  type = map(object({
    vm_name        = string
    rg_name        = string
    location       = string
    admin_username = string
    admin_password = string
    vnet_name      = string
    pip_name       = optional(string)
    nic_name       = string
    subnet         = string

  }))
}