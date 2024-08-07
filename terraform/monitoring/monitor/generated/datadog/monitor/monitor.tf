resource "datadog_monitor" "tfer--monitor_150799119" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.cpuutilization\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.cpuutilization\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.cpuutilization \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.cpuutilization\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "npd_gpt_plim_aws.ec2.cpuutilization_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.cpuutilization{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}
