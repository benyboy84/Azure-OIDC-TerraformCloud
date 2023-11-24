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

- Set the `AWS_ACCESS_KEY_ID` environment variable: The provider can read the AWS_ACCESS_KEY_ID environment variable and the key ID stored there to authenticate. Refer to [Managing Variables](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables) documentation for more details.

- Set the `AWS_SECRET_ACCESS_KEY` environment variable: The provider can read the AWS_SECRET_ACCESS_KEY environment variable and the secret key stored there to authenticate. Refer to [Managing Variables](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables/managing-variables) documentation for more details.

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
[TerraformCloud_Foundation](https://github.com/benyboy84/TerraformCloud_Foundation) repository.
