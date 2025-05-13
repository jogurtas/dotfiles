local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.color_scheme = "tokyonight"
config.font = wezterm.font("JetBrains Mono NL")
config.font_size = 15.0
config.initial_cols = 140
config.initial_rows = 38
config.enable_scroll_bar = true

config.window_background_opacity = 1.0
config.macos_window_background_blur = 100

--config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.colors = {
	tab_bar = {
		background = "#1a1b26",

		active_tab = {
			bg_color = "#232534",
			fg_color = "#c0c0c0",
		},

		inactive_tab = {
			bg_color = "#1a1b26",
			fg_color = "#808080",
		},

		inactive_tab_hover = {
			bg_color = "#2a2b3e",
			fg_color = "#909090",
		},

		new_tab = {
			bg_color = "#1a1b26",
			fg_color = "#808080",
		},

		new_tab_hover = {
			bg_color = "#393b55",
			fg_color = "#909090",
			italic = true,
		},
	},
}

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local title = tab.tab_index + 1
	return {
		{ Text = "   " .. title .. "   " },
	}
end)

return config
