# The following resource block is used to create an Azure application.

resource "azuread_application" "tfc_application" {
  display_name = local.application_name
}

# The following resource block is used to manage a service principal associated with an application within Azure Active Directory.

resource "azuread_service_principal" "tfc_service_principal" {
  application_id    = azuread_application.tfc_application.client_id
  alternative_names = azuread_application.tfc_application.display_name
  description       = local.application_description
  owners            = [data.azurerm_client_config.current.object_id]
}

# The following resource block is used to manage a federated identity credential associated with an application within Azure Active Directory.

resource "azuread_application_federated_identity_credential" "tfc_federated_credential_plan" {
  application_object_id = azuread_application.tfc_application.object_id
  display_name          = "tfc-plan-credential"
  audiences             = ["api://AzureADTokenExchange"]
  issuer                = "https://${local.tfc_hostname}"
  subject               = "organization:${local.tfc_organization_name}:project:${local.tfc_project_name}:workspace:${local.tfc_workspace_name}:run_phase:plan"
}

resource "azuread_application_federated_identity_credential" "tfc_federated_credential_apply" {
  application_object_id = azuread_application.tfc_application.object_id
  display_name          = "tfc-apply-credential"
  audiences             = ["api://AzureADTokenExchange"]
  issuer                = "https://${local.tfc_hostname}"
  subject               = "organization:${local.tfc_organization_name}:project:${local.tfc_project_name}:workspace:${local.tfc_workspace_name}:run_phase:apply"
}

# The following resource block is used to assign a given Principal to a given Role.

resource "azurerm_role_assignment" "tfc_role_assignment" {
  scope                = data.azurerm_subscription.current.id
  principal_id         = azuread_service_principal.tfc_service_principal.object_id
  role_definition_name = "Contributor"
}