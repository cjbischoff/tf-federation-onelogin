# AWS - OneLogin Module

This terraform module is responsible for provisioning OneLogin IDP and IAM resources(IAM policy/roles).

This module is considered a *Global* module and only needs to be provisioned 1 time per AWS Account.
#

##### OneLogin IDP & SSO
* The OneLogin configuration files are inlcuded in the modules directory.
    * Creates the IDP
    * Creates the Admin, Read and Finanace_Admin role and associates it with the IDP

#
#### Incorporating this Module
* Add this code to your provider file.
* The **account_id** must be set & passed from the root module.

```
module "onelogin" {
  source     = "modules/onelogin"
  account_id = "${var.account_id}"
}
```
#### Outputs
* **ol_idp_arn** - OneLogin IDP ARN
* **ol_admin_role_arn** - OneLogin Admin Role ARN
* **onelogin_external_role_arn** - OneLogin Trust Role, this must stay named security-onelogin-access-role for the trust
* **ol_read_role_arn** - OneLogin Read Role ARN -  ReadOnly and Security Audit
* **ol_finance_admin_role_arn** - OneLogin Finance Admin Role ARN - view Billing
