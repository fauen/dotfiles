-- Get all keybinds wezterm show-keys --lua
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

local function get_default_shell()
  if wezterm.target_triple == 'aarch64-apple-darwin' or wezterm.target_triple == 'x86_64-apple-darwin' then
    -- macOS: Use Homebrew Bash
    --return { '/opt/homebrew/bin/bash', '--login' }
    return { '/opt/homebrew/bin/bash' }
  else
    -- Linux: Use system Bash
    return { '/usr/bin/env', 'bash' }
  end
end
-- Set the right shell
-- If there are issues on MacOS just link it to /usr/local/bin
-- config.default_prog = { '/usr/bin/env', 'bash' }
config.default_prog = get_default_shell()

-- Color scheme
config.color_scheme = 'GruvboxDark'
-- Font
config.font = wezterm.font 'JetBrainsMono NF'
config.font_size = 10

-- Initial size of window, basically double the size of the normal one
config.initial_cols = 160
config.initial_rows = 48

-- Opacity of window
config.window_background_opacity = 1

-- Tabs
config.hide_tab_bar_if_only_one_tab = true

-- Alt keys
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = true

-- and finally, return the configuration to wezterm
return config
