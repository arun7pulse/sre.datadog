resource "datadog_monitor" "tfer--monitor_143744617" {
  escalation_message = ""
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "More than one Deployments Replica's pods are down in Deployment {{kube_namespace.name}}/{{kube_deployment.name}}."

  monitor_thresholds {
    critical = "2"
  }

  name                 = "[kubernetes] Monitor Kubernetes Deployments Replica Pods"
  new_group_delay      = "60"
  no_data_timeframe    = "0"
  notify_audit         = "true"
  notify_no_data       = "true"
  query                = "avg(last_15m):avg:kubernetes_state.deployment.replicas_desired{*} by {kube_cluster_name,kube_namespace,kube_deployment} - avg:kubernetes_state.deployment.replicas_available{*} by {kube_cluster_name,kube_namespace,kube_deployment} >= 2"
  renotify_interval    = "0"
  renotify_occurrences = "0"
  require_full_window  = "false"
  tags                 = ["integration:kubernetes"]
  timeout_h            = "0"
  type                 = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799085" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.disk_read_ops\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.disk_read_ops\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.disk_read_ops \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.disk_read_ops\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "npd_gpt_plim_aws.ec2.disk_read_ops_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.disk_read_ops{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799086" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.replica_lag\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.replica_lag\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.replica_lag \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.replica_lag\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "1200"
    critical_recovery = "1199"
    warning           = "600"
    warning_recovery  = "599"
  }

  name                     = "npd_gpt_plim_aws.rds.replica_lag_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_6h):aws.rds.replica_lag{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 1200"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799087" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.swap_usage\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.swap_usage\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.swap_usage \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.swap_usage\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "2e+09"
    critical_recovery = "1.999999999e+09"
    warning           = "1.61e+09"
    warning_recovery  = "1.609999999e+09"
  }

  name                     = "npd_gpt_plim_aws.rds.swap_usage_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.swap_usage{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 2000000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799088" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.burst_balance\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.burst_balance\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.burst_balance \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.burst_balance\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "20"
    critical_recovery = "21"
    warning           = "30"
    warning_recovery  = "31"
  }

  name                     = "npd_gpt_plim_aws.rds.burst_balance_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.burst_balance{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} <= 20"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799089" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.database_connections\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.database_connections\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.database_connections \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.database_connections\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "1200"
    critical_recovery = "1199"
    warning           = "1050"
    warning_recovery  = "1049"
  }

  name                     = "npd_gpt_plim_aws.rds.database_connections_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.database_connections{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 1200"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799090" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.read_iops\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.read_iops\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.read_iops \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.read_iops\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "10000"
    critical_recovery = "9999"
    warning           = "9000"
    warning_recovery  = "8999"
  }

  name                     = "npd_gpt_plim_aws.rds.read_iops_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.read_iops{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 10000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799091" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.write_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.write_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.write_throughput \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.write_throughput\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "4.9e+08"
    critical_recovery = "4.89999999e+08"
    warning           = "4.3e+08"
    warning_recovery  = "4.29999999e+08"
  }

  name                     = "npd_gpt_plim_aws.rds.write_throughput_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.write_throughput{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 490000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799092" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.network_in\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.network_in\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.network_in \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.network_in\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "npd_gpt_plim_aws.ec2.network_in_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.network_in{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799093" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.read_latency\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.read_latency\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.read_latency \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.read_latency\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "3"
    critical_recovery = "2"
    warning           = "2"
    warning_recovery  = "1"
  }

  name                     = "npd_gpt_plim_aws.rds.read_latency_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_6h):aws.rds.read_latency{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 3"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799094" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.network_out\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.network_out\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.network_out \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.network_out\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "npd_gpt_plim_aws.ec2.network_out_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.network_out{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799105" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.disk_queue_depth\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.disk_queue_depth\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.disk_queue_depth \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.disk_queue_depth\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "70"
    warning_recovery  = "59"
  }

  name                     = "npd_gpt_plim_aws.rds.disk_queue_depth_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.disk_queue_depth{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799113" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.read_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.read_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.read_throughput \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.read_throughput\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "4.9e+08"
    critical_recovery = "4.89999999e+08"
    warning           = "4.3e+08"
    warning_recovery  = "4.29999999e+08"
  }

  name                     = "npd_gpt_plim_aws.rds.read_throughput_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.read_throughput{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 490000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799114" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.freeable_memory\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.freeable_memory\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.freeable_memory \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.freeable_memory\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "1.074e+09"
    critical_recovery = "1.074000001e+09"
    warning           = "1.3e+09"
    warning_recovery  = "1.300000001e+09"
  }

  name                     = "npd_gpt_plim_aws.rds.freeable_memory_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.freeable_memory{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} <= 1074000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799116" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.disk_write_bytes\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.disk_write_bytes\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.disk_write_bytes \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.disk_write_bytes\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "npd_gpt_plim_aws.ec2.disk_write_bytes_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.disk_write_bytes{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

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

resource "datadog_monitor" "tfer--monitor_150799122" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.write_latency\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.write_latency\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.write_latency \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.write_latency\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "3"
    critical_recovery = "2"
    warning           = "2"
    warning_recovery  = "1"
  }

  name                     = "npd_gpt_plim_aws.rds.write_latency_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_6h):aws.rds.write_latency{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 3"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799123" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.cpuutilization\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.cpuutilization\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.cpuutilization \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.cpuutilization\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "85"
    critical_recovery = "84"
    warning           = "75"
    warning_recovery  = "74"
  }

  name                     = "npd_gpt_plim_aws.rds.cpuutilization_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.cpuutilization{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 85"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799125" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.write_iops\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.write_iops\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.write_iops \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.write_iops\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "10000"
    critical_recovery = "9999"
    warning           = "9000"
    warning_recovery  = "8999"
  }

  name                     = "npd_gpt_plim_aws.rds.write_iops_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.write_iops{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 10000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799128" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.network_receive_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.network_receive_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.network_receive_throughput \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.network_receive_throughput\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "8e+09"
    critical_recovery = "7.999999999e+09"
    warning           = "7e+09"
    warning_recovery  = "6.999999999e+09"
  }

  name                     = "npd_gpt_plim_aws.rds.network_receive_throughput_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.network_receive_throughput{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 8000000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799129" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.disk_read_bytes\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.disk_read_bytes\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.disk_read_bytes \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.disk_read_bytes\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "npd_gpt_plim_aws.ec2.disk_read_bytes_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.disk_read_bytes{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799139" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.network_transmit_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.network_transmit_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.network_transmit_throughput \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.network_transmit_throughput\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "8e+09"
    critical_recovery = "7.999999999e+09"
    warning           = "7e+09"
    warning_recovery  = "6.999999999e+09"
  }

  name                     = "npd_gpt_plim_aws.rds.network_transmit_throughput_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.network_transmit_throughput{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 8000000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799140" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.disk_write_ops\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.disk_write_ops\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.disk_write_ops \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.disk_write_ops\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   npd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "npd_gpt_plim_aws.ec2.disk_write_ops_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.disk_write_ops{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:npd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799196" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.disk_write_ops\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.disk_write_ops\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.disk_write_ops \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.disk_write_ops\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "prd_gpt_plim_aws.ec2.disk_write_ops_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.disk_write_ops{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799197" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.cpuutilization\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.cpuutilization\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.cpuutilization \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.cpuutilization\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "prd_gpt_plim_aws.ec2.cpuutilization_metric_monitor"
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
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799198" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.write_iops\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.write_iops\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.write_iops \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.write_iops\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "10000"
    critical_recovery = "9999"
    warning           = "9000"
    warning_recovery  = "8999"
  }

  name                     = "prd_gpt_plim_aws.rds.write_iops_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.write_iops{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 10000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799199" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.cpuutilization\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.cpuutilization\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.cpuutilization \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.cpuutilization\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "85"
    critical_recovery = "84"
    warning           = "75"
    warning_recovery  = "74"
  }

  name                     = "prd_gpt_plim_aws.rds.cpuutilization_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.cpuutilization{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 85"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799200" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.write_latency\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.write_latency\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.write_latency \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.write_latency\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "3"
    critical_recovery = "2"
    warning           = "2"
    warning_recovery  = "1"
  }

  name                     = "prd_gpt_plim_aws.rds.write_latency_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_6h):aws.rds.write_latency{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 3"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799201" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.read_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.read_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.read_throughput \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.read_throughput\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "4.9e+08"
    critical_recovery = "4.89999999e+08"
    warning           = "4.3e+08"
    warning_recovery  = "4.29999999e+08"
  }

  name                     = "prd_gpt_plim_aws.rds.read_throughput_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.read_throughput{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 490000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799202" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.replica_lag\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.replica_lag\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.replica_lag \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.replica_lag\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "1200"
    critical_recovery = "1199"
    warning           = "600"
    warning_recovery  = "599"
  }

  name                     = "prd_gpt_plim_aws.rds.replica_lag_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_6h):aws.rds.replica_lag{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 1200"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799203" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.disk_queue_depth\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.disk_queue_depth\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.disk_queue_depth \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.disk_queue_depth\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "70"
    warning_recovery  = "59"
  }

  name                     = "prd_gpt_plim_aws.rds.disk_queue_depth_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.disk_queue_depth{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799204" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.swap_usage\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.swap_usage\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.swap_usage \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.swap_usage\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "2e+09"
    critical_recovery = "1.999999999e+09"
    warning           = "1.61e+09"
    warning_recovery  = "1.609999999e+09"
  }

  name                     = "prd_gpt_plim_aws.rds.swap_usage_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.swap_usage{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 2000000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799205" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.database_connections\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.database_connections\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.database_connections \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.database_connections\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "1200"
    critical_recovery = "1199"
    warning           = "1050"
    warning_recovery  = "1049"
  }

  name                     = "prd_gpt_plim_aws.rds.database_connections_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.database_connections{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 1200"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799206" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.disk_read_ops\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.disk_read_ops\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.disk_read_ops \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.disk_read_ops\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "prd_gpt_plim_aws.ec2.disk_read_ops_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.disk_read_ops{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799207" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.burst_balance\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.burst_balance\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.burst_balance \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.burst_balance\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "20"
    critical_recovery = "21"
    warning           = "30"
    warning_recovery  = "31"
  }

  name                     = "prd_gpt_plim_aws.rds.burst_balance_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.burst_balance{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} <= 20"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799208" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.network_transmit_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.network_transmit_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.network_transmit_throughput \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.network_transmit_throughput\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "8e+09"
    critical_recovery = "7.999999999e+09"
    warning           = "7e+09"
    warning_recovery  = "6.999999999e+09"
  }

  name                     = "prd_gpt_plim_aws.rds.network_transmit_throughput_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.network_transmit_throughput{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 8000000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799209" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.disk_write_bytes\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.disk_write_bytes\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.disk_write_bytes \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.disk_write_bytes\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "prd_gpt_plim_aws.ec2.disk_write_bytes_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.disk_write_bytes{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799210" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.disk_read_bytes\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.disk_read_bytes\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.disk_read_bytes \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.disk_read_bytes\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "prd_gpt_plim_aws.ec2.disk_read_bytes_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.disk_read_bytes{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799211" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.network_receive_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.network_receive_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.network_receive_throughput \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.network_receive_throughput\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "8e+09"
    critical_recovery = "7.999999999e+09"
    warning           = "7e+09"
    warning_recovery  = "6.999999999e+09"
  }

  name                     = "prd_gpt_plim_aws.rds.network_receive_throughput_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.network_receive_throughput{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 8000000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799212" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.write_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.write_throughput\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.write_throughput \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.write_throughput\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "4.9e+08"
    critical_recovery = "4.89999999e+08"
    warning           = "4.3e+08"
    warning_recovery  = "4.29999999e+08"
  }

  name                     = "prd_gpt_plim_aws.rds.write_throughput_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.write_throughput{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 490000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799213" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.read_iops\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.read_iops\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.read_iops \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.read_iops\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "10000"
    critical_recovery = "9999"
    warning           = "9000"
    warning_recovery  = "8999"
  }

  name                     = "prd_gpt_plim_aws.rds.read_iops_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.read_iops{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 10000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799214" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.network_out\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.network_out\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.network_out \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.network_out\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "prd_gpt_plim_aws.ec2.network_out_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.network_out{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799215" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.freeable_memory\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.freeable_memory\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.freeable_memory \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.freeable_memory\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "1.074e+09"
    critical_recovery = "1.074000001e+09"
    warning           = "1.3e+09"
    warning_recovery  = "1.300000001e+09"
  }

  name                     = "prd_gpt_plim_aws.rds.freeable_memory_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.rds.freeable_memory{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} <= 1074000000"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799216" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.ec2.network_in\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.ec2.network_in\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.ec2.network_in \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.ec2.network_in\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "80"
    critical_recovery = "79"
    warning           = "60"
    warning_recovery  = "59"
  }

  name                     = "prd_gpt_plim_aws.ec2.network_in_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_10m):aws.ec2.network_in{env:npd AND lll_team:gpt-plim} by {instance_id} >= 80"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}

resource "datadog_monitor" "tfer--monitor_150799217" {
  escalation_message = "This is a reminder of an alert. Alert have not acknowledged/verified for 30 mins.Kindly check asap"
  evaluation_delay   = "0"
  include_tags       = "true"
  locked             = "false"
  message            = "{{#is_alert}} {{override_priority 'P3'}}\nCRITICAL LEVEL TRIGEERED - Metric aws.rds.read_latency\nNotify: @aannamalai2@lululemon.com \n{{event.text}}\n{{/is_alert}} \n  \n{{#is_alert_recovery}} {{override_priority 'P4'}} \nCRITICAL ALERT RECOVERED - Metric aws.rds.read_latency\nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_alert_recovery}} \n  \n{{#is_warning}} {{override_priority 'P4'}} \nWARNING LEVEL TRIGGERED - Metric aws.rds.read_latency \nNotify: @aannamalai2@lululemon.com \n{{event.text}} \n{{/is_warning}} \n  \n{{#is_warning_recovery}} {{override_priority 'P5'}} \nWARNING LEVEL RECOVERED - Metric aws.rds.read_latency\nNotify: @aannamalai2@lululemon.com  \n{{event.text}} \n{{/is_warning_recovery}} \n\n***   prd_gpt-plim_TEAM ALERT   ***\""

  monitor_thresholds {
    critical          = "3"
    critical_recovery = "2"
    warning           = "2"
    warning_recovery  = "1"
  }

  name                     = "prd_gpt_plim_aws.rds.read_latency_metric_monitor"
  new_group_delay          = "0"
  new_host_delay           = "300"
  no_data_timeframe        = "0"
  notification_preset_name = "show_all"
  notify_audit             = "false"
  notify_no_data           = "false"
  priority                 = "5"
  query                    = "avg(last_6h):aws.rds.read_latency{env:npd AND lll_team:gpt-plim} by {dbinstanceidentifier} >= 3"
  renotify_interval        = "30"
  renotify_occurrences     = "1"
  renotify_statuses        = ["alert"]
  require_full_window      = "true"
  tags                     = ["env:prd", "lll_costcenter:40", "lll_owner:gpt", "lll_team:gpt-plim", "team:GPT-PLIM"]
  timeout_h                = "0"
  type                     = "query alert"
}
