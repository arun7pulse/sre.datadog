resource "datadog_monitor" "ec2_cpu_utilization" {
  name           = "EC2 CPU Utilization Monitor - ${var.environment}"
  type           = "metric alert"
  query          = "avg(last_5m):avg:aws.ec2.cpuutilization{*} > 80"
  message        = "High CPU utilization on EC2 instances in ${var.environment} environment"
  tags           = var.monitor_tags
  notify_no_data = false
  include_tags   = true
  notify_audit   = false

  thresholds {
    critical = 80
    warning  = 70
  }
}
