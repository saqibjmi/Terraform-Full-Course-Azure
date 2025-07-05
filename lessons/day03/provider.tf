terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 4.35.0"
    }
  }
# in the below azure rm backend , i as a user have access onto the below backend storage account 
  backend "azurerm" {
    azurerm_resource_group = "hagahajak"  # Can also be set via `ARM_ACCESS_KEY` environment variable.
    storage_account_name = "abcd1234"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

  required_version = ">=1.9.0"
}

# configire the azurerm provider
provider "azurerm" {
    features {
      key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
   }

# to establish the connection between azurerm provider and terraform.
   client_id       = "00000000-0000-0000-0000-000000000000"
   client_secret   = var.client_secret
   tenant_id       = "10000000-0000-0000-0000-000000000000"
   subscription_id = "20000000-0000-0000-0000-000000000000"
}
