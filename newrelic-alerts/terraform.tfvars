## New Relic alert policy and notification channel values
alert_policy_name = " PROD Alerts"
channel_name      = ["Team Alerts"]

############# New Relic alert conditions values #############
nrql_conditions = {
  alert1 = {
    name                            = "Service App: Errors by ssHttpStatus code"
    type                            = "baseline"
    description                     = null
    value_function                  = null
    enabled                         = "true"
    runbook_url                     = null
    violation_time_limit_seconds    = 3600
    fill_option                     = null
    fill_value                      = null
    baseline_direction              = "upper_only"
    expected_groups                 = null
    open_violation_on_group_overlap = null
    aggregation_window              = null
    aggregation_method              = "event_flow"
    aggregation_delay               = 120
    expiration_duration             = null
    open_violation_on_expiration    = null
    close_violations_on_expiration  = null
    nrql = {
      query = "SELECT count(*) from PageAction WHERE appName = 'Service App' and ssHttpStatus > 0 FACET ssHttpStatus"
    }
    critical = {
      operator              = "above"
      threshold             = 2.0
      threshold_occurrences = "all"
      threshold_duration    = 900
    }
    warning = {
      operator              = null
      threshold             = null
      threshold_occurrences = null
      threshold_duration    = null
    }
  }
}

############# New Relic synthetic conditions values #############
synthetic_conditions = {
  alert1 = {
    name        = "Service App HTTPS Check Failed",
    monitor_id  = "12345678"
    runbook_url = null
    enabled     = "true"
  }
}

############# New Relic Infra alert conditions values #############
infra_conditions = {
  alert1 = {
    name                  = "No process running for 5 minutes"
    type                  = "infra_process_running"
    description           = null
    enabled               = "false"
    event                 = null
    select                = null
    comparison            = "equal"
    where                 = "displayName = 'app'"
    process_where         = "processDisplayName = 'app'"
    integration_provider  = null
    runbook_url           = null
    violation_close_timer = null

    critical = {
      duration      = 5
      value         = 0
      time_function = null
    }
    warning = {
      duration      = null
      value         = null
      time_function = null
    }
  }
}
