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
