resource "aws_iam_policy_attachment" "vgw_poller_role_policy_attachment" {
  name       = "TransitVpcPollerPolicyAttachment"
  roles      = [aws_iam_role.vgw_poller_role.name]
  policy_arn = aws_iam_policy.vgw_poller_role_policy.arn
}
