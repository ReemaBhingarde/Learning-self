resource "azurerm_resource_group" "TF-rg" {
  name = "${local.resource_name_prefix}-${var.resource_group_name}"
  location = var.resource_group_location
  tags = local.common_tags
}
/*resource "azurerm_virtual_network" "vnet" {
    name = var.vnet_name
    location = var.resource_group_location
    address_space = var.vnet_address_space
    resource_group_name = azurerm_resource_group.TF-rg.name
}
resource "azurerm_subnet" "websubnet" {
  name = var.web_subnet_name
  resource_group_name = azurerm_resource_group.TF-rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = var.web_subnet_address
}
resource "azurerm_network_interface" "webnic" {
  name = "${var.web_subnet_name}-nic"
  location = azurerm_virtual_network.vnet.location
  resource_group_name = azurerm_resource_group.TF-rg.name
ip_configuration {
  name = "Testvm123456"
  subnet_id = azurerm_subnet.websubnet.id
  private_ip_address_allocation = "Dynamic"
}

}   
resource "azurerm_windows_virtual_machine" "winvm" {
  name = "Myselftestvm"
  resource_group_name = azurerm_resource_group.TF-rg.name
  location = azurerm_resource_group.TF-rg.location
  size = "Standard_B2als_v2"
  admin_username = "testadmin"
  admin_password = "Administrator@123"
    network_interface_ids = [
    azurerm_network_interface.webnic.id,
  ]
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
     publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}*/