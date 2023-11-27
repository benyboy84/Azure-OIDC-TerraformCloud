locals {

  # This local is used to define the name for the Azure application. 
  application_name = "ConseilsTI - Azure Workload"

  # This local is used to define a description for the Azure service principal.
  application_description = ""

  # This local is use to define the address of Terraform Cloud (e.g., https://app.terraform.io without a trailing slash).
  tfc_hostname = "app.terraform.io"

  # This local is used to define the organization name.
  tfc_organization_name = "ConseilsTI"

  # This local is used to define the project from which this role will be used.
  tfc_project_name = "Azure Landing Zone"

  # This local is used to define the workspace from which this role will be used.
  tfc_workspace_name = "Azure-Enterprise"

}