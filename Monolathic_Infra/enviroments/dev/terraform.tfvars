resource_group = {
  rg_name = {
    name     = "rajathe"
    location = "eastus2"
  }
}

key_vault = {
  key1 = {
    name                = "kakaupdesh11"
    location            = "eastus2"
    resource_group_name = "rajathe"

  }
}

virtual_network = {
  vnet1 = {
    name                = "ilav-vnet"
    location            = "eastus2"
    resource_group_name = "rajathe"
    address_space       = ["10.0.0.0/16"]
    subnet = {
      s1 = {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      }
      s2 = {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }
}


public_ip = {
  p1 = {
    name                = "lav-pip"
    resource_group_name = "rajathe"
    location            = "eastus2"
    allocation_method   = "Static"
  },
  p2 = {
    name                = "lav-pip2"
    resource_group_name = "rajathe"
    location            = "eastus2"
    allocation_method   = "Static"
  }
}


sql_server = {
  "dev" = {
    sql_server_name              = "kakaserver"
    location                     = "eastus2"
    resource_group_name          = "rajathe"
    administrator_login          = "adminupdesh"
    administrator_login_password = "adminkaka@123"

  }
}

database = {
  "dev-data" = {
    sql_data_base_name               = "dev-database"
    edition                          = "Basic"
    requested_service_objective_name = "S0"
    resource_group_name              = "rajathe"
    sql_server_name                  = "kakaserver"
    server_key                       = "dev"
  }
}


vm = {
  vm1 = {
    vm_name        = "frontend-vm"
    rg_name        = "rajathe"
    location       = "centralindia"
    admin_username = "admin_updesh"
    admin_password = "updesh@12345"
    vnet_name      = "lav-vnet"
    pip_name       = "lav-pip"
    nic_name       = "vm1-nic"
    subnet         = "frontend-subnet"
  }

  vm2 = {
    vm_name        = "backend-vm"
    rg_name        = "rajathe"
    location       = "centralindia"
    admin_username = "admin_updesh"
    admin_password = "updesh@12345"
    vnet_name      = "lav-vnet"
    pip_name       = "lav-pip"
    nic_name       = "vm2-nic"
    subnet         = "backend-subnet"
  }
}
