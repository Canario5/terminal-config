local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Set Nushell as the default shell
config.default_prog = {"nu"}

-- Windows close confirmation
-- todo: replace when sessions added
config.window_close_confirmation = "AlwaysPrompt"
config.skip_close_confirmation_for_processes_named = {} -- it was needed for me to make work window_close_confirmation = 'AlwaysPrompt'

-- Basic appearance
config.color_scheme = "Catppuccin Macchiato" -- in ide`s im using "Catppuccin Mocha"
config.font = wezterm.font_with_fallback({'JetBrainsMono Nerd Font', 'FiraCode Nerd Font', 'Iosevka Term'})
config.font_size = 12.0
config.harfbuzz_features = {"calt=0", "clig=0", "liga=0"} -- disable font ligatures

-- Window appearance
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE" -- hides title bar; shows window buttons in tab bar; keeps resizing borders to work



--WIP

config.use_fancy_tab_bar = false

-- Paste with CTRL+V
local act = wezterm.action
config.keys = {
    {key = "v", mods = "CTRL", action = act.PasteFrom "Clipboard"}, -- paste from the clipboard
    {key = "v", mods = "CTRL", action = act.PasteFrom "PrimarySelection"} -- paste from the primary selection
}

return config
