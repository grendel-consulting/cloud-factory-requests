module "work_caretaker-saas_prod_request" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "work-caretaker-saas-prod@grendel-consulting.com" # Google Groups, must be unique
    AccountName               = "work-caretaker-saas-prod"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "operations@grendel-consulting.com" # Default ops email
    SSOUserFirstName          = "Operations"
    SSOUserLastName           = "Controller"
  }

  account_tags = { # If Org tags being used
    "Environment" = "Production"
  }

  change_management_parameters = {
    change_requested_by = "ramirezj"
    change_reason       = "Production Caretaker SaaS application"
  }

  custom_fields = {
    "control-plane" = var.CONTROL_PLANE_ACCOUNT_ID
  } # If being used for customisation pipeline or IAM SSO, for example

  account_customizations_name = "work-caretaker-saas" # Declare in customisation repo
}
