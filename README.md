<<<<<<< HEAD
# AWS_OIDC_TerraformCloud
=======
# Azure-OIDC-TerraformCloud
>>>>>>> c3f23170fedbe05830cd92e3f6da11ec2ff1d38c
<!-- BEGIN_TF_DOCS -->
# AWS OIDC Provider for Terraform Cloud

Code which manages configuration and life-cycle of OIDC providerfor
TerraformCloud in AWS. It is designed to be used from a dedicated
VCS-Driven Terraform Cloud workspace that would provision and manage
the configuration using Terraform code (IaC).

## Permissions

To manage the resources from that code, provide key and a secret from an account
with `AdministratorAccess` permissions.

## Authentication

The AWS provider requires a key ID and a secret in order to manage resources.

- Set the `AWS_ACCESS_KEY_ID` environment variable: The provider can read the AWS\_ACCESS\_KEY\_ID environment variable and the key ID stored there to authenticate. Refer to [Managing Variables](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables) documentation for more details.

- Set the `AWS_SECRET_ACCESS_KEY` environment variable: The provider can read the AWS\_SECRET\_ACCESS\_KEY environment variable and the secret key stored there to authenticate. Refer to [Managing Variables](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables) documentation for more details.

## Features

- Manages configuration and life-cycle of AWS resources:
  - IAM OpenID Provider
  - IAM Role
  - IAM Policy
  - IAM Role Policy Attachment

## Prerequisite

In order to deploy the configuration from this code, you must first create
a dedicated VCS-driven Terraform Cloud workspace. To create and configure
the workspace, you kust first run the code from the GitHub
[TerraformCloud\_Foundation](https://github.com/benyboy84/TerraformCloud_Foundation) repository.

## Documentation

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (> 1.3.1)

<<<<<<< HEAD
- <a name="requirement_aws"></a> [aws](#requirement\_aws) (5.23.1)

- <a name="requirement_tls"></a> [tls](#requirement\_tls) (4.0.4)
=======
- <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) (2.46.0)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (3.82.0)
>>>>>>> c3f23170fedbe05830cd92e3f6da11ec2ff1d38c

## Modules

No modules.

## Required Inputs

No required inputs.

## Optional Inputs

No optional inputs.

## Resources

The following resources are used by this module:

<<<<<<< HEAD
- [aws_iam_openid_connect_provider.tfc_provider](https://registry.terraform.io/providers/hashicorp/aws/5.23.1/docs/resources/iam_openid_connect_provider) (resource)
- [aws_iam_policy.tfc_policy](https://registry.terraform.io/providers/hashicorp/aws/5.23.1/docs/resources/iam_policy) (resource)
- [aws_iam_role.tfc_role](https://registry.terraform.io/providers/hashicorp/aws/5.23.1/docs/resources/iam_role) (resource)
- [aws_iam_role_policy_attachment.tfc_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/5.23.1/docs/resources/iam_role_policy_attachment) (resource)
- [tls_certificate.tfc_certificate](https://registry.terraform.io/providers/hashicorp/tls/4.0.4/docs/data-sources/certificate) (data source)
=======
- [azuread_application.tfc_application](https://registry.terraform.io/providers/hashicorp/azuread/2.46.0/docs/resources/application) (resource)
- [azuread_application_federated_identity_credential.tfc_federated_credential_apply](https://registry.terraform.io/providers/hashicorp/azuread/2.46.0/docs/resources/application_federated_identity_credential) (resource)
- [azuread_application_federated_identity_credential.tfc_federated_credential_plan](https://registry.terraform.io/providers/hashicorp/azuread/2.46.0/docs/resources/application_federated_identity_credential) (resource)
- [azuread_service_principal.tfc_service_principal](https://registry.terraform.io/providers/hashicorp/azuread/2.46.0/docs/resources/service_principal) (resource)
- [azurerm_role_assignment.tfc_role_assignment](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/resources/role_assignment) (resource)
- [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/client_config) (data source)
- [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.82.0/docs/data-sources/subscription) (data source)
>>>>>>> c3f23170fedbe05830cd92e3f6da11ec2ff1d38c

## Outputs

The following outputs are exported:

<<<<<<< HEAD
### <a name="output_arn"></a> [arn](#output\_arn)

Description: Amazon Resource Name (ARN) specifying the role.
=======
### <a name="output_client_id"></a> [client\_id](#output\_client\_id)

Description: The Client ID for the application.
>>>>>>> c3f23170fedbe05830cd92e3f6da11ec2ff1d38c

<!-- markdownlint-enable -->

<!-- END_TF_DOCS -->