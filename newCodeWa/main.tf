resource "azurerm_resource_group" "rgwala" {
    for_each = var.resource_groups
  name     = each.key
  location = each.value.location
  tags     = each.value.tags
}