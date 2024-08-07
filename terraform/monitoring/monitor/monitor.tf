terraform {
  required_version = ">= 1.0.0"
  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = ">= 3.35.0"
    }
  }
}

provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
  api_url = var.datadog_api_url
}

resource "datadog_monitor" "default" {
  for_each = var.monitored_metrics
  name     = each.value["monitor_name"] != null ? each.value["monitor_name"] : format("%s_%s_metric_monitor", each.value["db_name"], each.value["metric"])
  type     = "metric alert"
  # message  = format("\n\n{{#is_alert}} {{override_priority 'P3'}} \nCRITICAL LEVEL TRIGEERED - Metric %s \nNotify:%s \n{{event.text}} \n{{/is_alert}} \n\n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric %s \nNotify:%s \n{{event.text}} \n{{/is_alert_recovery}} \n\n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric %s \nNotify:%s \n{{event.text}} \n{{/is_warning}} \n\n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric %s \nNotify:%s \n{{event.text}} \n{{/is_warning_recovery}} \n\n***\t%s_%s_TEAM ALERT\t***", each.value["metric"], var.notify_alert, each.value["metric"], var.notify_alert_recovery, each.value["metric"], var.notify_warn, each.value["metric"], var.notify_warn_recovery, var.env, var.team)
  message = <<-EOT
  {{#is_alert}} {{override_priority 'P3'}}
  CRITICAL LEVEL TRIGEERED - Metric ${each.value["metric"]}
  Notify: ${var.notify_alert} 
  {{event.text}}
  {{/is_alert}} 
  
  {{#is_alert_recovery}} {{override_priority 'P4'}} 
  CRITICAL ALERT RECOVERED - Metric ${each.value["metric"]}
  Notify: ${var.notify_alert_recovery} 
  {{event.text}} 
  {{/is_alert_recovery}} 
  
  {{#is_warning}} {{override_priority 'P4'}} 
  WARNING LEVEL TRIGGERED - Metric ${each.value["metric"]} 
  Notify: ${var.notify_warn} 
  {{event.text}} 
  {{/is_warning}} 
  
  {{#is_warning_recovery}} {{override_priority 'P5'}} 
  WARNING LEVEL RECOVERED - Metric ${each.value["metric"]}
  Notify: ${var.notify_warn_recovery}  
  {{event.text}} 
  {{/is_warning_recovery}} 

  ***   ${var.env}_${var.team}_TEAM ALERT   ***"
  EOT

  query = format("avg(last_%s):%s{%s} by {%s} %s %s",
    each.value["period"] != null ? each.value["period"] : var.period,
    each.value["metric"],
    each.value["byfilter"] != null ? each.value["byfilter"] : var.byfilter,
    each.value["byidentifier"] != null ? join(",", each.value["byidentifier"]) : join(",", var.byidentifier),
    each.value["operator"] != null ? each.value["operator"] : var.operator,
  each.value["critical"] != null ? each.value["critical"] : var.default_thresholds[each.value["metric"]]["critical"])

  monitor_thresholds {
    critical          = each.value["critical"] != null ? each.value["critical"] : var.default_thresholds[each.value["metric"]]["critical"]
    warning           = each.value["warning"] != null ? each.value["warning"] : var.default_thresholds[each.value["metric"]]["warning"]
    critical_recovery = each.value["critical_recovery"] != null ? each.value["critical_recovery"] : var.default_thresholds[each.value["metric"]]["critical_recovery"]
    warning_recovery  = each.value["warning_recovery"] != null ? each.value["warning_recovery"] : var.default_thresholds[each.value["metric"]]["warning_recovery"]
  }

  include_tags             = true
  tags                     = var.tags
  notify_no_data           = var.notify_nodata
  notification_preset_name = var.notification_preset_name
  notify_audit             = var.notify_audit
  priority                 = var.priority_status
  renotify_interval        = var.renotify_interval
  renotify_occurrences     = var.renotify_occur
  renotify_statuses        = var.renotify_status
  escalation_message       = var.escalation_message
}

