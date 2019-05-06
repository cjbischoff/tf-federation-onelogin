variable "account_id" {}

variable "onelogin_account_id" {
  default = ""
}

variable "sm-onelogin_idp" {
  description = "Metadata queried from Secrets Manager for the OneLogin IDP."
}

variable "sm-onelogin_external_id" {
  description = "External ID queried from Secrets Manager for the OneLogin IAM trust."
  default     = ""
}
