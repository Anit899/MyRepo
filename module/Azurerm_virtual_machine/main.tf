resource "azurerm_public_ip" "pip_alpha" {
  name                = "pip01"
  resource_group_name = "Nokrg001"
  location            = "australiacentral"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "NICint" {
  name                = "mynic"
  location            = "australiacentral"
  resource_group_name = "Nokrg001"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subblock.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip_alpha.id
  }
}

resource "azurerm_windows_virtual_machine" "wvm" {
  name                            = "winVM01"
  resource_group_name             = "Nokrg001"
  location                        = "australiacentral"
  size                            = "Standard_F2"
  admin_username                  = data.azurerm_key_vault_secret.kvs001.value
  admin_password                  = data.azurerm_key_vault_secret.kvs002.value
  network_interface_ids           = [azurerm_network_interface.NICint.id]
 
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
     publisher = "microsoftwindowsdesktop"
    offer     = "windows-11"
    sku       = "win11-21h2-pro"
    version   = "latest"
  }
}