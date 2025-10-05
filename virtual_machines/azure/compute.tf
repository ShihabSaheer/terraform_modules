resource "azurerm_resource_group" "rg" {
  name     = "${var.instance_name}-rg"
  location = var.region
}

resource "azurerm_virtual_machine" "vm" {
  name                  = var.instance_name
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [] # Add NIC creation logic here
  vm_size               = var.instance_type

  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  # Dummy OS profile
  os_profile {
    computer_name  = var.instance_name
    admin_username = "adminuser"
    admin_password = "P@ssword1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  storage_os_disk {
    name              = "${var.instance_name}_os_disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
