# # variables.tf
# variable "resource_groups" {
#   description = "Map of resource groups. Key = RG name"
#   type = map(object({
#     location = string
#     tags     = optional(map(string), {})
#   }))
# }
variable "resource_groups" {
  type = map(object({
    rgkanam  = string
    location = string
  }))
}


variable "vnets" {
  type = map(object({
    name     = string
    rgname   = string
    location = string
    addspc   = list(string)
  }))
}