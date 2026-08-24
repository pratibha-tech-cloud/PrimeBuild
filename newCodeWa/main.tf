resource "azurerm_resource_group" "rgwala" {
  for_each = var.resource_groups
  name     = each.value.rgkanam
  location = each.value.location
  # tags     = each.value.tags
}

resource "azurerm_virtual_network" "vnetwa" {
  for_each            = var.vnets
  depends_on          = [azurerm_resource_group.rgwala]
  name                = each.value.name
  resource_group_name = each.value.rgname
  location            = each.value.location
  address_space       = each.value.addspc
}