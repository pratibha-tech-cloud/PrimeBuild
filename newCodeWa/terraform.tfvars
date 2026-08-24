resource_groups = {
  #   "rg1" = {
  #     name = "test-devops" 
  #     location = "East Asia"
  #   }
  "rg2" = { #<<< each.key =="rg2" (Always a string)
    rgkanam = "dev2-rg-devops"
    location = "East Asia"
    #<<< each.value ==
  }
}


vnets = {
  "vnet1" = {
    name     = "dev2-vnet"
    rgname   = "dev2-rg-devops"
    location = "East Asia"
    addspc   = ["10.0.0.0/16"]
  }
}