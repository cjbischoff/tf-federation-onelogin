output "onelogin_idp_arn" {
  value = "${aws_iam_saml_provider.onelogin.arn}"
}

output "onelogin_external_role_arn" {
  value = "${aws_iam_role.onelogin_external_role.arn}"
}

output "onelogin_admin_role_arn" {
  value = "${aws_iam_role.onelogin_admin_role.arn}"
}

output "onelogin_read_role_arn" {
  value = "${aws_iam_role.onelogin_read_role.arn}"
}

output "onelogin_finance_admin_role_arn" {
  value = "${aws_iam_role.onelogin_finance_admin_role.arn}"
}
