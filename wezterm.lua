-- This is the configuration for wezterm. A terminal emulator with LUA customization.
-- One of the mayor reasons to use in tandem with TMUX/NVIM
-- https://wezfurlong.org/wezterm/
local wezterm = require 'wezterm'

-- This will hold the configuration
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Here are my personal wezterm configuration choices. 

-- For example, changing the color scheme:
-- config.color_scheme = 'Gruvbox Material (Gogh)'
config.color_scheme = 'AdventureTime'
config.default_domain = 'WSL:Ubuntu'

-- and finally, return the configuration to wezterm
return config

