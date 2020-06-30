variable "bucket_name" {
  type        = string
  description = ""

}

variable "bucket_prefix" {
  type        = string
  description = ""

}

variable "config_file" {
  type        = string
  description = ""
}

variable "log_level" {
  type        = string
  description = ""
}

variable "common_tags" {
  type = map
}

variable "poller_enabled" {
  default = "true"
}

variable "rolename" {
  type    = string
  default = "TransitVpcPollerRole"
}

variable "policy_name" {
  description = ""
  default     = "TransitVpcPollerPolicy"
  type        = string
}

variable "event_rule_name" {
  type        = string
  description = ""
  default     = "vgw_lambda_poller_event"
}

variable "runtime" {
  type        = string
  description = ""
  default     = "python2.7"
}

variable "function_name" {
  default     = "vgw_poller"
  description = ""
  type        = string
}

variable "tracing_mode" {
  type        = string
  description = "x-rays settings"
  default     = "Active"
}
