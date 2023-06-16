# module "example_request" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "<ACCOUNT EMAIL>" # Google Groups, must be unique
#     AccountName               = "example"
#     ManagedOrganizationalUnit = "Example"
#     SSOUserEmail              = "<SSO OPS EMAIL>" # Default ops email
#     SSOUserFirstName          = "Operations"
#     SSOUserLastName           = "Controller"
#   }

#   account_tags = {{ # If Org tags being used
#    "Environment" = "Dev"
#    "Owner"       = "Project"
#  }

#   change_management_parameters = {
#     change_requested_by = "ramirezj"
#     change_reason       = "Description of push for new AWS Account"
#   }

#   custom_fields = {
#     "security-contact" = var.SECURITY_NAMED_CONTACT
#     "security-email"   = var.SECURITY_EMAIL
#     "security-phone"   = var.SECURITY_PHONE
#     "steampipe-cloud"  = var.STEAMPIPE_ACCOUNT_ID
#     "steampipe-secret" = var.STEAMPIPE_EXTERNAL_ID
# } # If being used for customisation pipeline or IAM SSO, for example

#   account_customizations_name = "example" # Declare in customisation repo
# }
