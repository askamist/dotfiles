local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'iceberg-dark'

config.font = wezterm.font 'FiraCode Nerd font Mono'
config.font_size = 15.0

config.default_prog = { '/opt/homebrew/bin/fish', '-l' }

config.scrollback_lines = 3500

config.enable_scroll_bar = true

config.term = "xterm-256color"

return config
