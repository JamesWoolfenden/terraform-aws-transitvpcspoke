data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.module}/files/transit-vpc-vgpoller.py"
  output_path = "${path.module}/files/lambda.zip"
}
