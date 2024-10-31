module "infra_control_plane_request" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "infra-control-plane@grendel-consulting.com" # Google Groups, must be unique
    AccountName               = "infra-control-plane"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "operations@grendel-consulting.com" # Default ops email
    SSOUserFirstName          = "Operations"
    SSOUserLastName           = "Controller"
  }

  account_tags = { # If Org tags being used
    "Environment" = "Prod"
    "Owner"       = "Infrastructure"
  }

  change_management_parameters = {
    change_requested_by = "ramirezj"
    change_reason       = "Domains, DNS and Networking"
  }

  custom_fields = {
    "security-contact" = var.SECURITY_NAMED_CONTACT
    "security-email"   = var.SECURITY_EMAIL
    "security-phone"   = var.SECURITY_PHONE
    "steampipe-cloud"  = var.STEAMPIPE_ACCOUNT_ID
    "steampipe-secret" = var.STEAMPIPE_EXTERNAL_ID
    "aikidodev-cloud"  = var.AIKIDODEV_ACCOUNT_ID
    "aikidodev-secret" = var.AIKIDODEV_EXTERNAL_ID

  } # If being used for customisation pipeline or IAM SSO, for example

  account_customizations_name = "infra-control-plane" # Declare in customisation repo
}
