-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.window_background_opacity = 0.8
config.text_background_opacity = 0.7
config.enable_tab_bar = false
config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })
-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox dark, hard (base16)'
-- and finally, return the configuration to wezterm
return config
