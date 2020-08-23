module "spoke" {
  source        = "../../"
  bucket_name   = "somebucket"
  bucket_prefix = ""
  config_file   = "file.json"
  log_level     = "INFO"
  common_tags   = { "createdby" = "Terraform" }
}
