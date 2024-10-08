local ct = require("seoul256.colortools")
local colors = {
    bg = "#4c4c4c",
    fg = "#dfe0e0",

    black = "#3a3a3a",
    red = "#a07474",
    green = "#678568",
    brown = "#c3a769",
    blue = "#85ADD4",
    purple = "#d0a39f",
    cyan = "#93b2b2",
    light_gray = "#dfe0e0",

    gray = "#5a5a5a",
    light_red = "#c66d86",
    light_green = "#87AF87",
    yellow = "#FFD787",
    light_blue = "#ADD4FB",
    pink = "#FFAFAF",
    light_cyan = "#87D7D7",
    white = "#E4E4E4",

    orange = "#c78a69",
    none = "NONE",

    border = "#414863",
    accent = "#ce8f6b",
    contrast = "#d4d4d4",
    cursor = "#d8d8d8",
    disabled = "#414863",
    highlight = "#347474",
    indentline = "#555555",
    line_numbers = "#8a896a",
    string = "#93b2b2",
    error = "#a07474",
    link = "#67a9aa",
}

if vim.o.background == "light" then
    colors = require("seoul256.colors-light")
end

colors.text = ct.lighten(colors.gray, -8) --text = "#565656",
colors.hint = ct.change_saturation_via_lab(colors.line_numbers, 5):to_hex()
colors.bg_l = ct.lighten(colors.bg, 8)
colors.bg_d = ct.lighten(colors.bg, -8)
colors.selection = ct.mix_two_colors_via_lab(colors.highlight, colors.bg, 0.5):to_hex()
-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.seoul256_contrast == false then
    colors.sidebar = colors.bg
    colors.float = colors.bg
else
    colors.sidebar = colors.bg_l
    colors.float = colors.bg_l
end

return colors
