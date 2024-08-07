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
  name     = each.value["monitor_name"] != null ? each.value["monitor_name"] : format("%s_%s", each.value["db_name"], each.value["metric"])
  # name    = format("%s_%s_%s", each.value["environment"], var.lll_team, each.value["metric"])
  type    = "metric alert"
  message = format("\n\n{{#is_alert}} {{override_priority 'P3'}} \nCRITICAL LEVEL TRIGEERED - Metric %s \nNotify:%s \n{{event.text}} \n{{/is_alert}} \n\n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric %s \nNotify:%s \n{{event.text}} \n{{/is_alert_recovery}} \n\n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric %s \nNotify:%s \n{{event.text}} \n{{/is_warning}} \n\n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric %s \nNotify:%s \n{{event.text}} \n{{/is_warning_recovery}} \n\n%s_%s alert", each.value["metric"], var.notify_alert, each.value["metric"], var.notify_alert_recovery, each.value["metric"], var.notify_warn, each.value["metric"], var.notify_warn_recovery, var.environment, var.lll_team)
  query = format("avg(last_%s):%s{env:%s, lll_team:%s} by {%s } %s %s",
    each.value["period"] != null ? each.value["period"] : var.period,
    each.value["metric"],
    var.environment,
    var.lll_team,
    each.value["byidentifier"] != null ? each.value["byidentifier"] : var.byidentifier,
    # var.byidentifier,
    each.value["operator"] != null ? each.value["operator"] : var.operator,
  each.value["critical"] != null ? each.value["critical"] : var.default_thresholds[each.value["metric"]]["critical"])
  # query = each.value["query"]
  monitor_thresholds {
    critical          = each.value["critical"] != null ? each.value["critical"] : var.default_thresholds[each.value["metric"]]["critical"]
    warning           = each.value["warning"] != null ? each.value["warning"] : var.default_thresholds[each.value["metric"]]["warning"]
    critical_recovery = each.value["critical_recovery"] != null ? each.value["critical_recovery"] : var.default_thresholds[each.value["metric"]]["critical_recovery"]
    warning_recovery  = each.value["warning_recovery"] != null ? each.value["warning_recovery"] : var.default_thresholds[each.value["metric"]]["warning_recovery"]
  }

  include_tags = true
  tags         = var.tags
  #  dbinstanceidentifiers    = var.dbinstanceidentifiers
  # dbengine                 = var.dbengine
  notify_no_data           = var.notify_nodata
  notification_preset_name = "show_all"
  notify_audit             = var.notify_audit
  priority                 = var.priority_status
  renotify_interval        = var.renotify_interval
  renotify_occurrences     = var.renotify_occur
  renotify_statuses        = var.renotify_status
  escalation_message       = " This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
}

