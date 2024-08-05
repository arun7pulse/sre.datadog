resource "datadog_monitor" "aws_ec2_cpuutilization" {
  name = "${var.environment}_${var.owner}_${var.team}-aws.ec2.cpuutilization-[{{name.name}}]" #NPD_GPT_PLIM - aws.rds.cpuutilization
  type = var.monitor_type
  # message            = "{{#is_warning}} \nWARNING - [RDS] DB Host CPU Utilization is high\n{{event.text}}\n${var.notify_warn}\n{{/is_warning}} \n\n{{#is_warning_recovery}} \nWARNING RECOVERED - [RDS] DB Host CPU Utilization is high \n{{event.text}}\n${var.notify_warn_recovery}\n{{/is_warning_recovery}} \n\n{{#is_alert}} \nCRITICAL - [RDS] DB Host CPU Utilization is too high\n{{event.text}}\n${var.notify_alert}\n{{/is_alert}}\n\n{{#is_alert_recovery}} \nCRITICAL RECOVERED - [RDS] DB Host CPU Utilization is too high\n{{event.text}}\n${var.notify_alert}\n{{/is_alert_recovery}}"
  message            = <<-EOF
  {{#is_warning}} 
  WARNING LEVEL - CPU Utilization
  {{event.text}}
  ${var.notify_warn}
  {{/is_warning}} 
  
  {{#is_warning_recovery}} 
  WARNING RECOVERED - CPU Utilization
  {event.text}}
  ${var.notify_warn_recovery}
  {{/is_warning_recovery}} 
  
  {{#is_alert}} 
  CRITICAL LEVEL - CPU Utilization
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert}}
  
  {{#is_alert_recovery}} 
  CRITICAL RECOVERED - CPU Utilization
  {{event.text}}
  ${var.notify_alert}
  {{/is_alert_recovery}}
  EOF
  escalation_message = "escalation message @aannamalai2@lululemon.com"

  query = "avg(last_1h):avg:aws.ec2.cpuutilization{lll_team:${var.team}, env:${var.environment}} by {name,lll_application_environment}.rollup(avg, 900) > 90"

  notify_no_data = false
  notify_audit   = false
  priority       = 4
  include_tags   = true
  tags           = var.monitor_tags

  monitor_thresholds {
    critical = 90
    warning  = 80
  }
}


# resource "datadog_monitor_json" "monitor_json" {
#   monitor = <<-EOF
# {
# 	"name": "gpt-plim-npd - [{{dbinstanceidentifier.name}}] - [RDS] DB Host CPU Utilization is too high",
# 	"type": "query alert",
# 	"query": "avg(last_1h):avg:aws.rds.cpuutilization{lll_team:gpt-plim, env:npd} by {dbinstanceidentifier}.rollup(avg, 900) > 90",
# 	"message": "{{#is_warning}} \nWARNING - [RDS] DB Host CPU Utilization is high\n{{event.text}}\n@2c91e729.lululemon.com@amer.teams.ms \n@aannamalai2@lululemon.com  \n{{/is_warning}} \n\n{{#is_warning_recovery}} \nWARNING RECOVERED - [RDS] DB Host CPU Utilization is high \n{{event.text}}\n@2c91e729.lululemon.com@amer.teams.ms \n@aannamalai2@lululemon.com \n{{/is_warning_recovery}} \n\n{{#is_alert}} \nCRITICAL - [RDS] DB Host CPU Utilization is too high\n{{event.text}}\n@4b4aa3fe.lululemon.com@amer.teams.ms \n@aannamalai2@lululemon.com \n{{/is_alert}}\n{{#is_alert_recovery}} \nCRITICAL RECOVERED - [RDS] DB Host CPU Utilization is too high\n{{event.text}}\n@4b4aa3fe.lululemon.com@amer.teams.ms \n@aannamalai2@lululemon.com \n{{/is_alert_recovery}}",
# 	"tags": [
# 		"env:npd",
# 		"team:gpt-plim"
# 	],
# 	"options": {
# 		"thresholds": {
# 			"critical": 90,
# 			"warning": 80
# 		},
# 		"notify_audit": false,
# 		"threshold_windows": null,
# 		"include_tags": true,
# 		"new_group_delay": 60,
# 		"notify_no_data": false,
# 		"silenced": {}
# 	},
# 	"priority": 4,
# 	"restricted_roles": null,
# 	"restriction_policy": {
# 		"bindings": []
# 	}
# }
# EOF
# }

