resource "azurerm_virtual_network" "myterraformnetwork" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = azurerm_resource_group.myterraformgroup.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = var.tags
}

resource "azurerm_subnet" "myterraformsubnet" {
  name                 = var.subnetname
  resource_group_name = azurerm_resource_group.myterraformgroup.name
  virtual_network_name = azurerm_virtual_network..myterraformnetwork.name
  address_prefixes     = ["10.0.2.0/24"]
}