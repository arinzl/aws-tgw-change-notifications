locals {
  region = "ap-southeast-2"

  tags_generic = {
    appname     = var.app_name
    environment = var.environment
    costcentre  = "TBC"
    ManagedBy   = var.ManagedByLocation
  }


}
