resource "aws_lambda_function" "vgw_poller" {
  filename      = "${path.module}/files/transit-vpc-vgpoller.zip"
  function_name = "vgw_poller"
  role          = aws_iam_role.vgw_poller_role.arn
  handler       = "transit-vpc-vgpoller.lambda_handler"
  runtime       = "python2.7"
  timeout       = "120"
  memory_size   = "128"
  description   = "Transit VPC: Poller function responsible for identifying specifically tagged VGWs and creating VPN connections to transit VPC."

  environment {
    variables = {
      BUCKET_NAME   = "${var.bucket_name}"
      BUCKET_PREFIX = "${var.bucket_prefix}"
      CONFIG_FILE   = "${var.config_file}"
      LOG_LEVEL     = "${var.log_level}"
    }
  }

  tags = "${merge(var.common_tags,
    map("Name", "MGT-TRANSIT-VPC-LAMBDA")
  )}"
}
