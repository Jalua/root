-- note that root is loaded before scanned...
wml_config {
  name: "root"
  scope: "WesMods"
  on_scan: (cfg, file, path) ->
    state.WesMods[cfg.id] =
      loaded: true
      path: path
      type: "root"
  on_load: ->
}
