resource "aws_lambda_function" "vgw_poller" {
  filename         = "${path.module}/files/lambda.zip"
  function_name    = var.function_name
  role             = aws_iam_role.vgw_poller_role.arn
  handler          = "transit-vpc-vgpoller.lambda_handler"
  runtime          = var.runtime
  timeout          = "120"
  memory_size      = "128"
  description      = "Transit VPC: Poller function responsible for identifying specifically tagged VGWs and creating VPN connections to transit VPC."
  source_code_hash = data.archive_file.lambda.output_base64sha256

  environment {
    variables = {
      BUCKET_NAME   = var.bucket_name
      BUCKET_PREFIX = var.bucket_prefix
      CONFIG_FILE   = var.config_file
      LOG_LEVEL     = var.log_level
    }
  }

  tags = var.common_tags
}
