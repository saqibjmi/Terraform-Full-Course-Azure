terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
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
}
