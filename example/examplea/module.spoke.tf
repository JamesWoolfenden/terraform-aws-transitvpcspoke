module "spoke" {
  source        = "../../"
  bucket_name   = ""
  bucket_prefix = ""
  config_file   = ""
  log_level     = "INFO"
  common_tags   = { "createdby" = "Terraform" }
}
