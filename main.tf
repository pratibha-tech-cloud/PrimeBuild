resource "azurerm_resource_group" "rsgblock" {
  name     = "rg-primebuild-prod"
  location = "Central india"
}

# new line added
#2nd line aded

# resource "azurerm_virtual_network" "vnetblock" {
#   name                = "vnet-primebuild-prod"
#   location            = azurerm_resource_group.rsgblock.location
#   resource_group_name = azurerm_resource_group.rsgblock.name  
#   address_space       = ["10.0.0.0/16"]
# }


# resource "azurerm_subnet" "subnetblock" {
#   name                 = "subnet-primebuild-prod"
#   resource_group_name  = azurerm_resource_group.rsgblock.name
#   virtual_network_name = azurerm_virtual_network.vnetblock.name
#   address_prefixes     = ["10.0.1.0/24"]
# }
# resource "azurerm_network_interface" "nicblock" {
#   name                = "nic-primebuild-prod"
#   location            = azurerm_resource_group.rsgblock.location
#   resource_group_name = azurerm_resource_group.rsgblock.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.subnetblock.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.pipblock.id
#   }
# }
# resource "azurerm_linux_virtual_machine" "vmblock" {
#   name                            = "vm-primebuild-prod"
#   resource_group_name             = azurerm_resource_group.rsgblock.name
#   location                        = azurerm_resource_group.rsgblock.location
#   size                            = "Standard_D4_v5"
#   admin_username                  = "adminuser"
#   admin_password                  = "password@1234"
#   disable_password_authentication = false
#   network_interface_ids = [
#     azurerm_network_interface.nicblock.id,
#   ]
#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }
# }
# resource "azurerm_network_security_group" "nsgblock" {
#   name                = "nsg-primebuild-prod"
#   location            = azurerm_resource_group.rsgblock.location
#   resource_group_name = azurerm_resource_group.rsgblock.name

#   security_rule {
#     name                       = "test123"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "*"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }

#   tags = {
#     environment = "Production"
#   }
# }
# resource "azurerm_public_ip" "pipblock" {
#   name                = "pip-primebuild-prod"
#   resource_group_name = azurerm_resource_group.rsgblock.name
#   location            = azurerm_resource_group.rsgblock.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }
# resource "azurerm_subnet_network_security_group_association" "associationblock" {
#   subnet_id                 = azurerm_subnet.subnetblock.id
#   network_security_group_id = azurerm_network_security_group.nsgblock.id
# }


# resource "azurerm_resource_group" "rgblock10" {
#   name     = "rg-terraform-prod"
#   location = "East US"
# }







# resource "azurerm_resource_group" "rgblock11" {
#   name     = "rg-terraform-uat"
#   location = "Central India"
# }