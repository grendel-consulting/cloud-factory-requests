variable "CONTROL_PLANE_ACCOUNT_ID" {
  type        = string
  description = "AWS Account ID for the Control Plane, from Terraform Cloud"
}

variable "SECURITY_NAMED_CONTACT" {
  type        = string
  description = "Named contact for security issues, from Terraform Cloud"
}

variable "SECURITY_EMAIL" {
  type        = string
  description = "Email address for security issues, from Terraform Cloud"
}

variable "SECURITY_PHONE" {
  type        = string
  description = "Phone number for security issues, from Terraform Cloud"
}

variable "STEAMPIPE_ACCOUNT_ID" {
  type        = string
  description = "AWS Account ID for the Steampipe Cloud environment, from Terraform Cloud"
}

variable "STEAMPIPE_EXTERNAL_ID" {
  type        = string
  description = "External ID for the Steampipe Cloud environment, from Terraform Cloud"
  sensitive   = true
}
