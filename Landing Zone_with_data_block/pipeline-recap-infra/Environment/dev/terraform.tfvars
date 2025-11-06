resource = {
  rg1 = {
    rg_name  = "lav"
    location = "centralindia"
  }
}

vnet = {
  vnet1 = {
    vnet_name     = "ilav-vnet"
    location      = "centralindia"
    rg_name       = "lav"
    address_space = ["10.0.0.0/16"]
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

publicip = {
  p1 = {
    pip_name          = "lav-pip"
    rg_name           = "lav"
    location          = "centralindia"
    allocation_method = "Static"
  }
  #   p2 = {
  #   pip_name          = "lav-pip2"
  #   rg_name           = "lav"
  #   location          = "centralindia"
  #   allocation_method = "Static"
  # }
}

virtual_machine = {
  vm1 = {
    vm_name        = "frontend-vm"
    rg_name        = "lav"
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
    rg_name        = "lav"
    location       = "centralindia"
    admin_username = "admin_updesh"
    admin_password = "updesh@12345"
    vnet_name      = "lav-vnet"
    # pip_name       = "lav-pip"
    nic_name       = "vm2-nic"
    subnet         = "backend-subnet"
  }
}