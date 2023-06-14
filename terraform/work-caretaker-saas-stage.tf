module "work_caretaker_saas_stage_request" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "work-caretaker-saas-stage@grendel-consulting.com" # Google Groups, must be unique
    AccountName               = "work-caretaker-saas-stage"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "operations@grendel-consulting.com" # Default ops email
    SSOUserFirstName          = "Operations"
    SSOUserLastName           = "Controller"
  }

  account_tags = { # If Org tags being used
    "Environment" = "Staging"
  }

  change_management_parameters = {
    change_requested_by = "ramirezj"
    change_reason       = "Staging Caretaker SaaS application"
  }

  custom_fields = {
    "control-plane"    = var.CONTROL_PLANE_ACCOUNT_ID
    "steampipe-cloud"  = var.STEAMPIPE_ACCOUNT_ID
    "steampipe-secret" = var.STEAMPIPE_EXTERNAL_ID
  } # If being used for customisation pipeline or IAM SSO, for example

  account_customizations_name = "work-caretaker-saas" # Declare in customisation repo
}
