variable "bucket_name" {
  type        = string
  description = "The Name of the bucket"

  validation {
    condition     = length(var.bucket_name) > 0
    error_message = "This buckets name cannot be an empty string."
  }
}

variable "bucket_prefix" {
  type        = string
  description = "A prefix for the bucket, so you can have named environments"
}

variable "config_file" {
  type        = string
  description = ""
  validation {
    condition     = length(var.config_file) > 0
    error_message = "This value cannot be an empty string."
  }
}

variable "log_level" {
  type        = string
  description = "The Log level value must be one of 'DEBUG', 'INFO','WARNING', 'ERROR','CRITICAL'."

  validation {
    condition     = can(regex("DEBUG|INFO|WARNING|ERROR|CRITICAL", var.log_level))
    error_message = "The Value must be one of 'DEBUG', 'INFO','WARNING', 'ERROR','CRITICAL'."
  }
}

variable "common_tags" {
  type        = map
  description = "Implements the common tags scheme"
}

variable "poller_enabled" {
  type    = bool
  default = true
}

variable "rolename" {
  type    = string
  default = "TransitVpcPollerRole"
}

variable "policy_name" {
  description = "The name of the policy"
  default     = "TransitVpcPollerPolicy"
  type        = string
}

variable "event_rule_name" {
  type        = string
  description = ""
  default     = "vgw_lambda_poller_event"

  validation {
    condition     = length(var.event_rule_name) > 0
    error_message = "This value cannot be an empty string."
  }
}

variable "runtime" {
  type        = string
  description = "The lambda runtime"
  default     = "python2.7"
  validation {
    condition     = length(var.runtime) > 5 && substr(var.runtime, 0, 6) == "python"
    error_message = "This uses python do its value need to start with \"python\"."
  }
}

variable "function_name" {
  default     = "vgw_poller"
  description = ""
  type        = string
  validation {
    condition     = length(var.function_name) > 0
    error_message = "This value cannot be an empty string."
  }
}

variable "tracing_mode" {
  type        = string
  description = "x-rays settings"
  default     = "Active"

  validation {
    condition     = contains(["PassThrough","Active"], var.tracing_mode)
    error_message = "Tracing mode can only be PassThrough or Active."
  }

}
