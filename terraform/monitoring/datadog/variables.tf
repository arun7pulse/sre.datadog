# Datadog App Key, API Key and API URL :

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

variable "TF_CLI_ARGS_plan" {
  description = "TF_CLI_ARGS_plan will pick env specific auto.tfvars file"
  type        = string
  default     = ""
}

# # Environment Variables
# variable "env" {
#   type        = string
#   description = "Environment We're building for"
# }

# # App Variables
# variable "app" {
#   type        = string
#   description = "Application name we're building for"
# }



variable "monitored_metrics" {
  type = map(object({
    db_name           = string
    metric            = string
    operator          = optional(string)
    warning           = optional(number)
    critical          = optional(number)
    warning_recovery  = optional(number)
    critical_recovery = optional(number)
    period            = optional(string)
    monitor_name      = optional(string)
    metric_type       = optional(string)
    byidentifier      = optional(string)
  }))
}


# variable "monitored_metrics_dynamic" {
#   type = map(object({
#     db_name           = string
#     metric            = string
#     operator          = optional(string)
#     warning           = optional(number)
#     critical          = optional(number)
#     warning_recovery  = optional(number)
#     critical_recovery = optional(number)
#     period            = optional(string)
#     monitor_name      = optional(string)
#     metric_type       = optional(string)
#   }))
# }



# variable "monitored_anom_metrics" {
#   type = map(object({
#     db_name           = string
#     metric            = string
#     met_type          = string
#     operator          = optional(string)
#     warning           = optional(number)
#     critical          = optional(number)
#     warning_recovery  = optional(number)
#     critical_recovery = optional(number)
#     period            = optional(string)
#     monitor_name      = optional(string)
#     metric_type       = optional(string)
#     interval          = optional(number)
#     algorithm         = optional(string)
#     detect_freq       = optional(number)
#     directions        = optional(string)
#     alert_window      = optional(string)
#     def_zero          = optional(string)
#   }))
# }



# variable "monitored_forecast_metrics" {
#   type = map(object({
#     db_name           = string
#     metric            = string
#     met_type          = string
#     operator          = optional(string)
#     warning           = optional(number)
#     critical          = optional(number)
#     warning_recovery  = optional(number)
#     critical_recovery = optional(number)
#     period            = optional(string)
#     monitor_name      = optional(string)
#     metric_type       = optional(string)
#     algorithm         = optional(string)
#     bounds            = optional(number)
#     model             = optional(string)
#     interval          = optional(string)
#     history           = optional(string)
#   }))
# }

variable "default_thresholds" {
  type = map(object({
    operator          = string
    warning           = number
    critical          = number
    warning_recovery  = number
    critical_recovery = number
    period            = string
  }))
  default = {
    "aws.rds.cpuutilization" = {
      operator          = ">="
      warning           = 50
      critical          = 70
      warning_recovery  = 49
      critical_recovery = 69
      period            = "5m"
    }
    "aws.rds.freeable_memory" = {
      operator          = "<="
      warning           = 20000000
      critical          = 15000000
      warning_recovery  = 20000001
      critical_recovery = 15000001
      period            = "5m"
    }
    "aws.rds.replica_lag" = {
      operator          = ">="
      warning           = 600
      critical          = 1200
      warning_recovery  = 599
      critical_recovery = 1199
      period            = "5m"
    }
    "aws.rds.database_connections" = {
      operator          = ">="
      warning           = 500
      critical          = 800
      warning_recovery  = 499
      critical_recovery = 799
      period            = "5m"
    }
    "aws.rds.disk_queue_depth" = {
      operator          = ">="
      warning           = 60
      critical          = 80
      warning_recovery  = 59
      critical_recovery = 79
      period            = "5m"
    }
    "aws.rds.burst_balance" = {
      operator          = ">="
      warning           = 70
      critical          = 80
      warning_recovery  = 69
      critical_recovery = 79
      period            = "5m"
    }
    "aws.rds.swap_usage" = {
      operator          = ">="
      warning           = 50
      critical          = 70
      warning_recovery  = 49
      critical_recovery = 69
      period            = "5m"
    }
    "aws.rds.read_throughput" = {
      operator          = ">="
      warning           = 300000000
      critical          = 600000000
      warning_recovery  = 299999999
      critical_recovery = 599999999
      period            = "5m"
    }
    "aws.rds.write_throughput" = {
      operator          = ">="
      warning           = 100000000
      critical          = 200000000
      warning_recovery  = 99999999
      critical_recovery = 199999999
      period            = "5m"
    }
    "aws.rds.read_iops" = {
      operator          = ">="
      warning           = 10000
      critical          = 20000
      warning_recovery  = 9999
      critical_recovery = 19999
      period            = "5m"
    }
    "aws.rds.write_iops" = {
      operator          = ">="
      warning           = 4000
      critical          = 6000
      warning_recovery  = 3999
      critical_recovery = 5999
      period            = "5m"
    }
    "aws.rds.read_latency" = {
      operator          = ">="
      warning           = 2
      critical          = 3
      warning_recovery  = 1
      critical_recovery = 2
      period            = "5m"
    }
    "aws.rds.write_latency" = {
      operator          = ">="
      warning           = 2
      critical          = 3
      warning_recovery  = 1
      critical_recovery = 2
      period            = "5m"
    }
    "aws.rds.network_receive_throughput" = {
      operator          = ">="
      warning           = 5000000
      critical          = 8000000
      warning_recovery  = 4999999
      critical_recovery = 7999999
      period            = "5m"
    }
    "aws.rds.network_transmit_throughput" = {
      operator          = ">="
      warning           = 100000000
      critical          = 150000000
      warning_recovery  = 99999999
      critical_recovery = 149999999
      period            = "5m"
    }
  }
}


variable "default_dyn_thresholds" {
  type = map(object({
    operator          = string
    warning           = number
    critical          = number
    warning_recovery  = number
    critical_recovery = number
    period            = string
  }))
  default = {
    "aws.rds.free_storage_space" = {
      operator          = "<="
      warning           = 30
      critical          = 20
      warning_recovery  = 31
      critical_recovery = 21
      period            = "5m"
    }
  }
}




variable "default_anom_thresholds" {
  type = map(object({
    operator          = string
    warning           = number
    critical          = number
    warning_recovery  = number
    critical_recovery = number
    period            = string
    algorithm         = string
    detect_freq       = number
    directions        = string
    interval          = number
    alert_window      = string
    def_zero          = string
    met_type          = string
  }))
  default = {
    "aws.rds.cpuutilization" = {
      operator          = ">="
      warning           = 0.3
      critical          = 0.4
      warning_recovery  = 0.29
      critical_recovery = 0.39
      period            = "1d"
      algorithm         = "basic"
      detect_freq       = 2
      directions        = "above"
      interval          = 300
      alert_window      = "4h"
      def_zero          = "true"
      met_type          = "anomaly"
    }
    "aws.rds.freeable_memory" = {
      operator          = ">="
      warning           = 0.20000000
      critical          = 0.23000000
      warning_recovery  = 0.19999999
      critical_recovery = 0.22999999
      period            = "1d"
      algorithm         = "basic"
      detect_freq       = 2
      directions        = "above"
      interval          = 300
      alert_window      = "4h"
      def_zero          = "true"
      met_type          = "anomaly"
    }
  }
}


variable "default_forecast_thresholds" {
  type = map(object({
    operator          = string
    warning           = number
    critical          = number
    warning_recovery  = number
    critical_recovery = number
    period            = string
    #monitor_name      = string
    #metric_type       = string
    interval  = string
    algorithm = string
    bounds    = number
    model     = string
    history   = string
    met_type  = string
  }))
  default = {
    "aws.rds.free_storage_space" = {
      operator          = ">="
      warning           = 60
      critical          = 80
      warning_recovery  = 59
      critical_recovery = 79
      period            = "1d"
      interval          = "60m"
      algorithm         = "linear"
      bounds            = 1
      model             = "simple"
      history           = "3d"
      met_type          = "forecast"
    }
  }
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = list(string)
  default     = []
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
  default     = 2
}

variable "team_name" {
  description = "Team_name as atag"
  type        = string
  default     = "GPT"
}

variable "renotify_status" {
  description = " Renotify the notification when there is no data ,warning and critical alerts"
  type        = list(string)
  # default     = ["no data", "alert"]
  default = ["alert"]
}

variable "priority_status" {
  description = " Integer from 1 (high) to 5 (low) indicating alert severity"
  type        = number
  default     = 5 # default 5-Info
}

variable "renotify_interval" {
  description = "Renotify-critical alert after 30 mins"
  type        = number
  default     = 30
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

variable "period" {
  description = "evaluation period"
  type        = string
  default     = "6h"
}

variable "operator" {
  description = "comparison operator"
  type        = string
  default     = ">="
}




variable "lll_owner" {
  description = "lll_owner name"
  type        = string
  default     = "gpt"
}

variable "lll_team" {
  description = "lll_team name"
  type        = string
  default     = "gpt-plim"
}

variable "team" {
  description = "datadog team for mapping"
  type        = string
  default     = "GPT-PLIM"
}

variable "environment" {
  description = "env name for categorise."
  type        = string
  # default     = "npd"
}

variable "byidentifier" {
  description = "byidentifier to identify by the resource"
  type        = string
  default     = "dbinstanceidentifier"
}
