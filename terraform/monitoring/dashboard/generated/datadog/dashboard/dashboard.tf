resource "datadog_dashboard" "tfer--dashboard_eda-emj-btu" {
  description  = "Created using the Datadog provider in Terraform"
  is_read_only = "false"
  layout_type  = "ordered"

  template_variable {
    default = "autoscaling"
    name    = "var_2"
    prefix  = "service_name"
  }

  template_variable {
    default = "aws"
    name    = "var_1"
    prefix  = "host"
  }

  template_variable_preset {
    name = "preset_1"

    template_variable {
      name  = "var_1"
      value = "host.dc"
    }

    template_variable {
      name  = "var_2"
      value = "my_service"
    }
  }

  title = "Ordered Layout Dashboard"
  url   = "/dashboard/eda-emj-btu/ordered-layout-dashboard"

  widget {
    alert_graph_definition {
      alert_id  = "895605"
      live_span = "1h"
      title     = "Widget Title"
      viz_type  = "timeseries"
    }
  }

  widget {
    alert_value_definition {
      alert_id   = "895605"
      precision  = "3"
      text_align = "center"
      title      = "Widget Title"
      unit       = "b"
    }
  }

  widget {
    alert_value_definition {
      alert_id   = "895605"
      precision  = "3"
      text_align = "center"
      title      = "Widget Title"
      unit       = "b"
    }
  }

  widget {
    change_definition {
      live_span = "1h"

      request {
        change_type   = "absolute"
        compare_to    = "week_before"
        increase_good = "true"
        order_by      = "name"
        order_dir     = "desc"
        q             = "avg:system.load.1{env:staging} by {account}"
        show_present  = "true"
      }

      title = "Widget Title"
    }
  }

  widget {
    check_status_definition {
      check     = "aws.ecs.agent_connected"
      group_by  = ["account", "cluster"]
      grouping  = "cluster"
      live_span = "1h"
      tags      = ["account:demo", "cluster:awseb-ruthebdog-env-8-dn3m6u3gvk"]
      title     = "Widget Title"
    }
  }

  widget {
    distribution_definition {
      live_span = "1h"

      request {
        q = "avg:system.load.1{env:staging} by {account}"

        style {
          palette = "warm"
        }
      }

      show_legend = "false"
      title       = "Widget Title"
    }
  }

  widget {
    group_definition {
      layout_type = "ordered"
      show_title  = "true"
      title       = "Group Widget"

      widget {
        alert_graph_definition {
          alert_id  = "123"
          live_span = "1h"
          title     = "Alert Graph"
          viz_type  = "toplist"
        }
      }

      widget {
        note_definition {
          background_color = "pink"
          content          = "cluster note widget"
          font_size        = "14"
          has_padding      = "true"
          show_tick        = "true"
          text_align       = "center"
          tick_edge        = "left"
          tick_pos         = "50%"
        }
      }
    }
  }

  widget {
    heatmap_definition {
      live_span = "1h"

      request {
        q = "avg:system.load.1{env:staging} by {account}"

        style {
          palette = "warm"
        }
      }

      show_legend = "false"
      title       = "Widget Title"

      yaxis {
        include_zero = "true"
        max          = "2"
        min          = "1"
        scale        = "sqrt"
      }
    }
  }

  widget {
    hostmap_definition {
      group           = ["host", "region"]
      no_group_hosts  = "true"
      no_metric_hosts = "true"
      node_type       = "container"

      request {
        fill {
          q = "avg:system.load.1{*} by {host}"
        }

        size {
          q = "avg:memcache.uptime{*} by {host}"
        }
      }

      scope = ["aws_account:727006795293", "region:us-east-1"]

      style {
        fill_max     = "20"
        fill_min     = "10"
        palette      = "yellow_to_green"
        palette_flip = "true"
      }

      title = "Widget Title"
    }
  }

  widget {
    note_definition {
      background_color = "pink"
      content          = "note text"
      font_size        = "14"
      has_padding      = "true"
      show_tick        = "true"
      text_align       = "center"
      tick_edge        = "left"
      tick_pos         = "50%"
    }
  }

  widget {
    query_table_definition {
      live_span = "1h"

      request {
        aggregator = "sum"

        conditional_formats {
          comparator = "<"
          hide_value = "false"
          palette    = "white_on_green"
          value      = "2"
        }

        conditional_formats {
          comparator = ">"
          hide_value = "false"
          palette    = "white_on_red"
          value      = "2.2"
        }

        limit = "10"
        q     = "avg:system.load.1{env:staging} by {account}"
      }

      title = "Widget Title"
    }
  }

  widget {
    query_value_definition {
      autoscale   = "true"
      custom_unit = "xx"
      live_span   = "1h"
      precision   = "4"

      request {
        aggregator = "sum"

        conditional_formats {
          comparator = "<"
          hide_value = "false"
          palette    = "white_on_green"
          value      = "2"
        }

        conditional_formats {
          comparator = ">"
          hide_value = "false"
          palette    = "white_on_red"
          value      = "2.2"
        }

        q = "avg:system.load.1{env:staging} by {account}"
      }

      text_align = "right"
      title      = "Widget Title"
    }
  }

  widget {
    scatterplot_definition {
      color_by_groups = ["account", "apm-role-group"]
      live_span       = "1h"

      request {
        x {
          aggregator = "max"
          q          = "avg:system.cpu.user{*} by {service, account}"
        }

        y {
          aggregator = "min"
          q          = "avg:system.mem.used{*} by {service, account}"
        }
      }

      title = "Widget Title"

      xaxis {
        include_zero = "true"
        label        = "x"
        max          = "2000"
        min          = "1"
        scale        = "pow"
      }

      yaxis {
        include_zero = "false"
        label        = "y"
        max          = "2222"
        min          = "5"
        scale        = "log"
      }
    }
  }

  widget {
    service_level_objective_definition {
      show_error_budget = "true"
      slo_id            = "56789"
      time_windows      = ["7d", "previous_week"]
      title             = "Widget Title"
      view_mode         = "overall"
      view_type         = "detail"
    }
  }

  widget {
    servicemap_definition {
      filters     = ["datacenter:dc1", "env:prod"]
      service     = "master-db"
      title       = "env: prod, datacenter:dc1, service: master-db"
      title_align = "left"
      title_size  = "16"
    }
  }

  widget {
    timeseries_definition {
      event {
        q              = "sources:test tags:1"
        tags_execution = ""
      }

      event {
        q              = "sources:test tags:2"
        tags_execution = ""
      }

      legend_size = "2"
      live_span   = "1h"

      marker {
        display_type = "error dashed"
        label        = " z=6 "
        value        = "y = 4"
      }

      marker {
        display_type = "ok solid"
        label        = " x=8 "
        value        = "10 < y < 999"
      }

      request {
        apm_query {
          compute_query {
            aggregation = "avg"
            facet       = "@duration"
            interval    = "5000"
          }

          group_by {
            facet = "resource_name"
            limit = "50"

            sort_query {
              aggregation = "avg"
              facet       = "@string_query.interval"
              order       = "desc"
            }
          }

          index        = "apm-search"
          search_query = "type:web"
        }

        display_type   = "bars"
        on_right_yaxis = "false"
      }

      request {
        display_type = "area"

        log_query {
          compute_query {
            aggregation = "avg"
            facet       = "@duration"
            interval    = "5000"
          }

          group_by {
            facet = "host"
            limit = "10"

            sort_query {
              aggregation = "avg"
              facet       = "@duration"
              order       = "desc"
            }
          }

          index        = "mcnulty"
          search_query = "status:info"
        }

        on_right_yaxis = "false"
      }

      request {
        display_type   = "area"
        on_right_yaxis = "false"

        process_query {
          filter_by = ["active"]
          limit     = "50"
          metric    = "process.stat.cpu.total_pct"
          search_by = "error"
        }
      }

      request {
        display_type = "line"

        metadata {
          alias_name = "Alpha"
          expression = "avg:system.cpu.user{app:general} by {env}"
        }

        on_right_yaxis = "false"
        q              = "avg:system.cpu.user{app:general} by {env}"

        style {
          line_type  = "dashed"
          line_width = "thin"
          palette    = "warm"
        }
      }

      show_legend = "true"
      title       = "Widget Title"

      yaxis {
        include_zero = "false"
        max          = "100"
        scale        = "log"
      }
    }
  }

  widget {
    toplist_definition {
      request {
        conditional_formats {
          comparator = "<"
          hide_value = "false"
          palette    = "white_on_green"
          value      = "2"
        }

        conditional_formats {
          comparator = ">"
          hide_value = "false"
          palette    = "white_on_red"
          value      = "2.2"
        }

        q = "avg:system.cpu.user{app:general} by {env}"
      }

      title = "Widget Title"
    }
  }
}

resource "datadog_dashboard" "tfer--dashboard_gay-7fs-rxv" {}
