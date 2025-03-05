-- Get all keybinds wezterm show-keys --lua
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Set the shell
config.default_prog = { 'pwsh' }

-- Color scheme
config.color_scheme = 'GruvboxDark'
-- Font
config.font = wezterm.font 'Source Code Pro'

-- Opacity of window
config.window_background_opacity = 0.8

-- Tabs
config.hide_tab_bar_if_only_one_tab = true

-- Alt keys
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = true

-- and finally, return the configuration to wezterm
return config
