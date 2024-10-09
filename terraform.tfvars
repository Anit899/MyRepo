
akvnets = {
  vnet01 = {
    name                = "vnet01"
    location            = "West Europe"
    resource_group_name = "anrg01"
    address_space       = ["10.0.0.0/16"]

    subnets = {
      subnet1 = {
        name             = "subnet1"
        address_prefixes = ["10.0.1.0/24"]
      }
    }
    subnet2 = {
      name             = "subnet2"
      address_prefixes = ["10.0.2.0/24"]
    }
  }



  vnet02 = {
    name                = "vnet02"
    location            = "West Europe"
    resource_group_name = "anrg01"
    address_space       = ["10.1.0.0/16"]

    subnets = {
      subnet2 = {
        name             = "subnet1"
        address_prefixes = ["10.1.1.0/24"]
      }
    }
    subnet2 = {
      name             = "subnet2"
      address_prefixes = ["10.1.2.0/24"]
    }
  }
}
 