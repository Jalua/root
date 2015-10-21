wml_config {
  name: "scenario"
  scope: "Scenarios"
  on_load: (cfg) ->
    state.Scenarios[cfg.id] = cfg
  on_scan: (cfg, file, path) ->
    state.Registry.scenarios[cfg.id] = false
} 
