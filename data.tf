# This block is used to get information aboutthe current Subscription.
data "azurerm_subscription" "current" {}

# This block is used to get information about the configuration of the AzureRM provider.
data "azurerm_client_config" "current" {}