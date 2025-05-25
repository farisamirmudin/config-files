local wezterm = require('wezterm')
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

local config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_decorations = 'RESIZE',
	color_scheme = 'tokyonight',
	window_background_opacity = 0.90
}

return config
