<<<<<<< HEAD
<!-- BEGIN_TF_DOCS -->
# Azure OIDC Provider for Terraform Cloud

Code which manages configuration and life-cycle of OIDC providerfor
TerraformCloud in AWS. It is designed to be used from a dedicated
VCS-Driven Terraform Cloud workspace that would provision and manage
the configuration using Terraform code (IaC).

## Permissions

To manage the resources from that code, provide key and a secret from an account
with `Application Administrator` permissions.

## Authentication

The AWS provider requires a key ID and a secret in order to manage resources.

- Set the `ARM_CLIENT_ID` environment variable: The provider can read the ARM\_CLIENT\_ID environment variable and the client ID stored there to authenticate. Refer to [Managing Variables](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables) documentation for more details.

- Set the `ARM_CLIENT_SECRET` environment variable: The provider can read the ARM\_CLIENT\_SECRET environment variable and the client secret stored there to authenticate. Refer to [Managing Variables](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables) documentation for more details.

## Features

- Manages configuration and life-cycle of Azure resources:
  - Azure AD Application
  - Azure AD Service Principal
  - Azure AD Application Federated Identity Credential
  - Azure Role Assignment

## Prerequisite

In order to deploy the configuration from this code, you must first create
a dedicated VCS-driven Terraform Cloud workspace. To create and configure
the workspace, you kust first run the code from the GitHub
[TerraformCloud-Foundation](https://github.com/benyboy84/TerraformCloud-Foundation) repository.

## Documentation

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (> 1.3.1)

- <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) (2.46.0)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (3.82.0)

## Modules

No modules.

## Required Inputs

No required inputs.

## Optional Inputs

No optional inputs.

## Resources

The following resources are used by this module:

- [azuread_application.tfc_application](https://registry.terraform.io/providers/hashicorp/azuread/2.46.0/docs/resources/application) (resource)
- [azuread_application_federated_identity_credential.tfc_federated_credential_apply](https://registry.terraform.io/providers/hashicorp/azuread/2.46.0/docs/resources/application_federated_identity_credential) (resource)
- [azuread_application_federated_identity_credential.tfc_federated_credential_plan](https://registry.terraform.io/providers/hashicorp/azuread/2.46.0/docs/resources/application_federated_identity_credential) (resource)
- [azuread_service_principal.tfc_service_principal](https://registry.terraform.io/providers/hashicorp/azuread/2.46.0/docs/resources/service_principal) (resource)
- [azurerm_role_assignment.tfc_role_assignment](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/role_assignment) (resource)
- [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/client_config) (data source)
- [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/subscription) (data source)

## Outputs

The following outputs are exported:

### <a name="output_client_id"></a> [client\_id](#output\_client\_id)

Description: The Client ID for the application.

<!-- markdownlint-enable -->

<!-- END_TF_DOCS -->