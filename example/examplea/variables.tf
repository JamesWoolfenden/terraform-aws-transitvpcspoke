variable "bucket_name" {}

variable "bucket_prefix" {}

variable "config_file" {}

variable "log_level" {}

variable "common_tags" {
  type = map(any)
}

variable "poller_enabled" {
  default = "true"
}
