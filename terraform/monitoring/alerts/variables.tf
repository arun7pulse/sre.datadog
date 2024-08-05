variable "datadog_api_key" {
  description = "api key"
  type        = string
}

variable "datadog_app_key" {
  description = "app key"
  type        = string
}

variable "datadog_api_url" {
  description = "api url"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev, stg, qas, prd)"
  type        = string
}

variable "notify_nodata" {
  description = "when no data found metric for ceratin amount time, Datadog will trigger an alert"
  type        = string
  default     = true
}

variable "notify_audit" {
  description = " When someone is modify the monitor and alert -Datadog will trigger an alert"
  type        = string
  default     = true
}

variable "renotify_occur" {
  description = " Renotify the notification after x mins"
  type        = number
  default     = 1
}

variable "notify_alert" {
  description = "Receive an alert"
  type        = string
}

variable "notify_alert_recovery" {
  description = "Receive an alert recovery"
  type        = string
}

variable "notify_warn" {
  description = "Receive an warn"
  type        = string
}

variable "notify_warn_recovery" {
  description = "Receive an warning recovery"
  type        = string
}

variable "monitor_tags" {
  description = "Tags for Datadog monitors we can add"
  type        = list(string)
  default = [
    "env:npd",
    "team:GPT-PLIM"
  ]
}

variable "monitor_type" {
  description = "The type of the Datadog monitor (e.g., 'metric alert')"
  type        = string
  default     = "metric alert"
}


# App Variables
variable "owner" {
  description = "owner details"
  type        = string
  default     = "gpt"
}

# App Variables
variable "team" {
  description = "team details"
  type        = string
  default     = "plim"
}

# # App Variables
# variable "owner" {
#   type        = map(string)
#   description = "owner details"
#   default = {
#     lll_owner = "gpt"
#   }
# }

# # App Variables
# variable "team" {
#   type        = map(string)
#   description = "team details"
#   default = {
#     lll_team = "gpt-plim"
#   }
# }

# output "environment" {
#   value = var.environment
# }
