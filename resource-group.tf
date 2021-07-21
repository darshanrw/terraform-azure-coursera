resource "azurerm_resource_group" "myterraformgroup" {
  name     = var.resourcegroupname
  location = var.location
  tags     = var.tags
}