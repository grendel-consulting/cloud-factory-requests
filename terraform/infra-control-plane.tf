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

  account_tags = {} # If Org tags being used

  change_management_parameters = {
    change_requested_by = "ramirezj"
    change_reason       = "Domains, DNS and Networking"
  }

  custom_fields = {
    "steampipe-cloud"  = var.STEAMPIPE_ACCOUNT_ID
    "steampipe-secret" = var.STEAMPIPE_EXTERNAL_ID
  } # If being used for customisation pipeline or IAM SSO, for example

  account_customizations_name = "infra-control-plane" # Declare in customisation repo
}
