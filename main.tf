terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "monikakasture"

    workspaces {
      prefix = "project-"
    }
  }

}

provider   "azurerm"   { 
   features   {} 
 }
resource   "azurerm_resource_group"   "rgtest"   { 
   name   =   var.rg_name
   location   =   "westeurope" 
 }

