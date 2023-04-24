module "work_corporate_site_stage_request" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "work-corporate-site-stage@grendel-consulting.com" # Google Groups, must be unique
    AccountName               = "work-corporate-site-stage"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "operations@grendel-consulting.com" # Default ops email
    SSOUserFirstName          = "Operations"
    SSOUserLastName           = "Controller"
  }

  account_tags = { # If Org tags being used
    "Environment" = "Stage"
  }

  change_management_parameters = {
    change_requested_by = "ramirezj"
    change_reason       = "Staging consulting website"
  }

  custom_fields = {} # If being used for customisation pipeline or IAM SSO, for example

  account_customizations_name = "work-corporate-site" # Declare in customisation repo
}
