data "aws_iam_policy_document" "vgw_poller_role_policy_document" {
  statement {
    sid = "1"

    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    resources = [
      "arn:aws:logs:*:*:*",
    ]
  }

  statement {
    actions = [
      "ec2:Describe*",
      "ec2:CreateTags",
      "ec2:CreateCustomerGateway",
      "ec2:DeleteCustomerGateway",
      "ec2:CreateVpnConnection",
      "ec2:DeleteVpnConnection",
    ]

    resources = [
      "*",
    ]
  }

  statement {
    actions = [
      "s3:PutObject",
      "s3:PutObjectAcl",
      "s3:GetObject",
    ]

    resources = [
      "arn:aws:s3:::${var.bucket_name}/${var.bucket_prefix}*",
    ]
  }

  statement {
    actions = [
      "kms:Decrypt",
      "kms:GenerateDataKey*",
      "kms:Encrypt",
    ]

    resources = [
      "*",
    ]
  }
}
