resource "aws_iam_policy" "vgw_poller_role_policy" {
  # checkov:skip=CKV_AWS_290: IAM policy requires broad write access for this module to function
  # checkov:skip=CKV_AWS_355: IAM policy requires wildcard resource for this module to function
  name   = var.policy_name
  path   = "/"
  policy = data.aws_iam_policy_document.vgw_poller_role_policy_document.json
}
