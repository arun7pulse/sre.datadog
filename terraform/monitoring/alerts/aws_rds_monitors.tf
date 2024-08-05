resource "datadog_monitor" "aws_rds_cpuutilization" {
  name               = "${var.environment}_${var.owner}_${var.team}-aws.rds.cpuutilization-[{{dbinstanceidentifier.name}}]" #NPD_GPT_PLIM - aws.rds.cpuutilization
  type               = var.monitor_type
  message            = <<-EOF
  {{#is_warning}} 
  WARNING LEVEL - Host CPU Utilization
  {{event.text}}
  ${var.notify_warn}
  {{/is_warning}} 
  
  {{#is_warning_recovery}} 
  WARNING RECOVERED - Host CPU Utilization
  {event.text}}
  ${var.notify_warn_recovery}
  {{/is_warning_recovery}} 
  
  {{#is_alert}} 
  CRITICAL LEVEL - Host CPU Utilization
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert}}
  
  {{#is_alert_recovery}} 
  CRITICAL RECOVERED - Host CPU Utilization
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert_recovery}}

  EOF
  escalation_message = "escalation message @aannamalai2@lululemon.com"
  query              = "avg(last_1h):avg:aws.rds.cpuutilization{lll_team:${var.team}, env:${var.environment}} by {dbinstanceidentifier}.rollup(avg, 900) > 90"
  notify_no_data     = false
  notify_audit       = false
  priority           = 4
  include_tags       = true
  tags               = var.monitor_tags

  monitor_thresholds {
    critical = 90
    warning  = 80
  }
}

resource "datadog_monitor" "aws_rds_database_connections" {
  name               = "${var.environment}_${var.owner}_${var.team}-aws.rds.database_connections-[{{dbinstanceidentifier.name}}]" #NPD_GPT_PLIM - aws.rds.cpuutilization
  type               = var.monitor_type
  message            = <<-EOF
  {{#is_warning}} 
  WARNING LEVEL - Database Connections
  {{event.text}}
  ${var.notify_warn}
  {{/is_warning}} 
  
  {{#is_warning_recovery}} 
  WARNING RECOVERED - Database Connections
  {event.text}}
  ${var.notify_warn_recovery}
  {{/is_warning_recovery}} 
  
  {{#is_alert}} 
  CRITICAL LEVEL - Database Connections
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert}}
  
  {{#is_alert_recovery}} 
  CRITICAL RECOVERED - Database Connections
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert_recovery}}

  EOF
  escalation_message = "escalation message @aannamalai2@lululemon.com"
  query              = "avg(last_1h):avg:aws.rds.database_connections{lll_team:${var.team}, env:${var.environment}} by {dbinstanceidentifier}.rollup(avg, 900) >=750"
  notify_no_data     = false
  notify_audit       = false
  priority           = 4
  include_tags       = true
  tags               = var.monitor_tags

  monitor_thresholds {
    critical = 750
    warning  = 500
  }
}

resource "datadog_monitor" "aws_rds_disk_queue_depth" {
  name               = "${var.environment}_${var.owner}_${var.team}-aws.rds.disk_queue_depth-[{{dbinstanceidentifier.name}}]" #NPD_GPT_PLIM - aws.rds.cpuutilization
  type               = var.monitor_type
  message            = <<-EOF
  {{#is_warning}} 
  WARNING LEVEL - Disk Queue Depth
  {{event.text}}
  ${var.notify_warn}
  {{/is_warning}} 
  
  {{#is_warning_recovery}} 
  WARNING RECOVERED - Disk Queue Depth
  {event.text}}
  ${var.notify_warn_recovery}
  {{/is_warning_recovery}} 
  
  {{#is_alert}} 
  CRITICAL LEVEL - Disk Queue Depth
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert}}
  
  {{#is_alert_recovery}} 
  CRITICAL RECOVERED - Disk Queue Depth
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert_recovery}}

  EOF
  escalation_message = "escalation message @aannamalai2@lululemon.com"
  query              = "avg(last_1h):avg:aws.rds.disk_queue_depth{lll_team:${var.team}, env:${var.environment}} by {dbinstanceidentifier}.rollup(avg, 900) >=100"
  notify_no_data     = false
  notify_audit       = false
  priority           = 4
  include_tags       = true
  tags               = var.monitor_tags

  monitor_thresholds {
    critical = 100
    warning  = 90
  }
}

resource "datadog_monitor" "aws_rds_free_storage_space" {
  name               = "${var.environment}_${var.owner}_${var.team}-aws.rds.free_storage_space-[{{dbinstanceidentifier.name}}]" #NPD_GPT_PLIM - aws.rds.cpuutilization
  type               = var.monitor_type
  message            = <<-EOF
  {{#is_warning}} 
  WARNING LEVEL - Free Storage Space
  {{event.text}}
  ${var.notify_warn}
  {{/is_warning}} 
  
  {{#is_warning_recovery}} 
  WARNING RECOVERED - Free Storage Space
  {event.text}}
  ${var.notify_warn_recovery}
  {{/is_warning_recovery}} 
  
  {{#is_alert}} 
  CRITICAL LEVEL - Free Storage Space
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert}}
  
  {{#is_alert_recovery}} 
  CRITICAL RECOVERED - Free Storage Space
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert_recovery}}

  EOF
  escalation_message = "escalation message @aannamalai2@lululemon.com"
  query              = "avg(last_1h):avg:aws.rds.free_storage_space{lll_team:${var.team}, env:${var.environment}} by {dbinstanceidentifier}.rollup(avg, 900) <11000000000"
  notify_no_data     = false
  notify_audit       = false
  priority           = 4
  include_tags       = true
  tags               = var.monitor_tags

  monitor_thresholds {
    critical = 11000000000
    warning  = 16500000000
  }
}

resource "datadog_monitor" "aws_rds_freeable_memory" {
  name    = "${var.environment}_${var.owner}_${var.team}-aws.rds.freeable_memory-[{{dbinstanceidentifier.name}}]" #NPD_GPT_PLIM - aws.rds.cpuutilization
  type    = var.monitor_type
  message = <<-EOF
  {{#is_warning}} 
  WARNING LEVEL - Freeable Memory
  {{event.text}}
  ${var.notify_warn}
  {{/is_warning}} 
  
  {{#is_warning_recovery}} 
  WARNING RECOVERED - Freeable Memory
  {event.text}}
  ${var.notify_warn_recovery}
  {{/is_warning_recovery}} 
  
  {{#is_alert}} 
  CRITICAL LEVEL - Freeable Memory
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert}}
  
  {{#is_alert_recovery}} 
  CRITICAL RECOVERED - Freeable Memory
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert_recovery}}
  EOF

  escalation_message = "escalation message @aannamalai2@lululemon.com"
  query              = "avg(last_1h):avg:aws.rds.freeable_memory{lll_team:${var.team}, env:${var.environment}} by {dbinstanceidentifier}.rollup(avg, 900) <540000000"
  notify_no_data     = false
  notify_audit       = false
  priority           = 4
  include_tags       = true
  tags               = var.monitor_tags

  monitor_thresholds {
    critical = 540000000
    warning  = 790000000
  }
}
