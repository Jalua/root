-- note that root is loaded before scanned...
wml_config {
  name: "root"
  scope: "WesMods"
  on_scan: (cfg, file, path) ->
    state.WesMods.roots[cfg.id] = cfg
    state.WesMods[cfg.id] =
      loaded: false
      path: path
  on_load: (cfg, file, path) ->
    --state.WesMods[cfg.id].loaded = true
} 
