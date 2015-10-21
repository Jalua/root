wml_config {
  name: "game_core"
  scope: "WesMods"
  on_load: (cfg, file, path) ->
    state.WesMods[cfg.id].loaded = true
  -- state.WesMods.game_cores[cfg_id] = cfg
  on_scan: (cfg, file, path) ->
    cfg.loaded = false
    cfg.path = path
    cfg.type = "core"
    state.WesMods[cfg.id] = cfg
} 
