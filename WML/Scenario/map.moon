wml_config {
  name: "map"
  scope: "Scenarios"
  on_load: (cfg) ->
    state.Maps[cfg.id] = cfg
  on_scan: (cfg, file, path) ->
    state.Registry.maps[cfg.id] = 
        loaded: false    
        path: path
} 
