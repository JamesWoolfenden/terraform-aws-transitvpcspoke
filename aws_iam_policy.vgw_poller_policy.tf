resource "aws_iam_policy" "vgw_poller_role_policy" {
  name   = "TransitVpcPollerPolicy"
  path   = "/"
  policy = "${data.aws_iam_policy_document.vgw_poller_role_policy_document.json}"
}
