provider "azurerm" {
  features {}
  subscription_id = "8b5aa65c-86a2-4818-b2f7-2223b545d57f"
  tenant_id       = "0f9829d3-a628-4f2b-a3ac-58e0740d27ae"
}

provider "azuread" {
  tenant_id = "0f9829d3-a628-4f2b-a3ac-58e0740d27ae"
}