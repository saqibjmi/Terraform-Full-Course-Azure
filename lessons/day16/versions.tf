# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.41.0"
    }
  }
}

provider "azuread" {
  # Configuration options
}