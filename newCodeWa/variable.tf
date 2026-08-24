# variables.tf
variable "resource_groups" {
  description = "Map of resource groups. Key = RG name"
  type = map(object({
    location = string
    tags     = optional(map(string), {})
  }))
}