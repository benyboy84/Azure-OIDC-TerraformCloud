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

- Set the `ARM_CLIENT_ID` environment variable: The provider can read the ARM_CLIENT_ID environment variable and the client ID stored there to authenticate. Refer to [Managing Variables](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables) documentation for more details.

- Set the `ARM_CLIENT_SECRET` environment variable: The provider can read the ARM_CLIENT_SECRET environment variable and the client secret stored there to authenticate. Refer to [Managing Variables](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables) documentation for more details.

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
