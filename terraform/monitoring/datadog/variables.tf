variable "datadog_api_key" {
  description = "Datadog API key"
  type        = string
}

variable "datadog_app_key" {
  description = "Datadog application key"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "environment" {
  description = "Deployment environment (dev, stg, qas, prd)"
  type        = string
}

variable "monitor_tags" {
  description = "Tags for Datadog monitors"
  type        = list(string)
  default     = []
}

# You can define more variables as needed
