
module "target" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jakesky@amazon.com"
    AccountName               = "target"
    ManagedOrganizationalUnit = "Governance"
    SSOUserEmail              = "target+jakesky@amazon.com"
    SSOUserFirstName          = "Jake"
    SSOUserLastName           = "Kudiersky"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
