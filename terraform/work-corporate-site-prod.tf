module "work_corporate_site_prod_request" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "work-corporate-site-prod@grendel-consulting.com" # Google Groups, must be unique
    AccountName               = "work-corporate-site-prod"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "operations@grendel-consulting.com" # Default ops email
    SSOUserFirstName          = "Operations"
    SSOUserLastName           = "Controller"
  }

  account_tags = { # If Org tags being used
    "Environment" = "Prod"
    "Owner"       = "Central"
  }

  change_management_parameters = {
    change_requested_by = "ramirezj"
    change_reason       = "Production consulting website"
  }

  custom_fields = {
    "control-plane"    = var.CONTROL_PLANE_ACCOUNT_ID
    "security-contact" = var.SECURITY_NAMED_CONTACT
    "security-email"   = var.SECURITY_EMAIL
    "security-phone"   = var.SECURITY_PHONE
    "steampipe-cloud"  = var.STEAMPIPE_ACCOUNT_ID
    "steampipe-secret" = var.STEAMPIPE_EXTERNAL_ID
  } # If being used for customisation pipeline or IAM SSO, for example

  account_customizations_name = "work-corporate-site" # Declare in customisation repo
}
