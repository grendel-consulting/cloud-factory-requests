variable "account-request-table" {
  type        = string
  description = "DynamoDB table where account requests are stored"
  default     = "aft-request"
}

variable "account-request-table-hash" {
  type        = string
  description = "Dynamo DB table hash key"
  default     = "id"
}

variable "control_tower_parameters" {
  type = object({
    AccountEmail              = string
    AccountName               = string
    ManagedOrganizationalUnit = string
    SSOUserEmail              = string
    SSOUserFirstName          = string
    SSOUserLastName           = string
  })
  description = "Parameters passed to Control Tower when vending an AWS Account"
}

variable "change_management_parameters" {
  type = object({
    change_requested_by = string
    change_reason       = string
  })
  description = "Auditing information for change management"
}

variable "account_tags" {
  type        = map(any)
  description = "Any account-level tags to propagate to the AWS Account"
  default     = {}
}

variable "custom_fields" {
  type        = map(any)
  description = "Any custom fields to propagate to the AWS Account"
  default     = {}
}

variable "account_customizations_name" {
  type        = string
  description = "Specific account customizations that should be applied"
  default     = ""
}