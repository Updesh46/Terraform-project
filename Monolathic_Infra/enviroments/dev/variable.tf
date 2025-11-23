variable "resource_group" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "key_vault" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string

    }
  ))
}
variable "virtual_network" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnet = optional(map(object({
      name             = string
      address_prefixes = list(string)
    })))
  }))
}


variable "public_ip" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
  }))
}

variable "sql_server" {
  type = map(object({
    sql_server_name              = string
    location                     = string
    resource_group_name          = string
    administrator_login          = string
    administrator_login_password = string
  }))
}
variable "database" {
  type = map(object({
    sql_data_base_name               = string
    resource_group_name              = string
    sql_server_name                  = string
    edition                          = string
    server_key                       = string
    requested_service_objective_name = string
  }))
}


variable "vm" {
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