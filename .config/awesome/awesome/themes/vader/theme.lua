--[[
    vader Awesome WM theme
    Created by Culinax
    Modified by Thanos Apostolou
--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi


local themes_path = "~/.config/awesome/themes/vader"
theme = {}
theme.dir = "~/.config/awesome/themes/vader"

theme.font              = "NotoSansMono Regular 10"
theme.notification_font = "NotoSansMono Bold 14"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#6495ed"
theme.bg_urgent     = "#000000"
theme.bg_minimize   = "#101010"
theme.bg_systray    = theme.bg_normal

theme.fg_normal   = "#ffffff"
theme.fg_focus    = "#ffffff"
theme.fg_urgent   = "#ff0000"
theme.fg_minimize = "#ffffff"

beautiful.useless_gap = 5

theme.border_width  = 2
theme.border_normal = "#00000000"
theme.border_focus  = "#6495ed33"
theme.border_marked = "#16A085"

theme.hotkeys_modifiers_fg = "#2EB398"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"
theme.tooltip_opacity = 255

-- Display the taglist squares
theme.taglist_squares_sel   = themes_path .. "vader/taglist/squarefw.png"
theme.taglist_squares_unsel = themes_path .. "vader/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "vader/icons/submenu.png"
theme.menu_height = 25
theme.menu_width  = 200

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal              = themes_path .. "vader/titlebar/close_normal_arc.png"
theme.titlebar_close_button_focus               = themes_path .. "vader/titlebar/close_focus_arc.png"

theme.titlebar_ontop_button_normal_inactive     = themes_path .. "vader/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = themes_path .. "vader/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = themes_path .. "vader/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = themes_path .. "vader/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = themes_path .. "vader/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = themes_path .. "vader/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = themes_path .. "vader/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = themes_path .. "vader/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = themes_path .. "vader/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = themes_path .. "vader/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = themes_path .. "vader/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = themes_path .. "vader/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "vader/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "vader/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "vader/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path .. "vader/titlebar/maximized_focus_active.png"

theme.wallpaper = "~/.config/background.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh      = themes_path .. "vader/layouts/fairh.png"
theme.layout_fairv      = themes_path .. "vader/layouts/fairv.png"
theme.layout_floating   = themes_path .. "vader/layouts/floating.png"
theme.layout_magnifier  = themes_path .. "vader/layouts/magnifier.png"
theme.layout_max        = themes_path .. "vader/layouts/max.png"
theme.layout_fullscreen = themes_path .. "vader/layouts/fullscreen.png"
theme.layout_tilebottom = themes_path .. "vader/layouts/tilebottom.png"
theme.layout_tileleft   = themes_path .. "vader/layouts/tileleft.png"
theme.layout_tile       = themes_path .. "vader/layouts/tile.png"
theme.layout_tiletop    = themes_path .. "vader/layouts/tiletop.png"
theme.layout_spiral     = themes_path .. "vader/layouts/spiral.png"
theme.layout_dwindle    = themes_path .. "vader/layouts/dwindle.png"
theme.layout_cornernw   = themes_path .. "vader/layouts/cornernw.png"
theme.layout_cornerne   = themes_path .. "vader/layouts/cornerne.png"
theme.layout_cornersw   = themes_path .. "vader/layouts/cornersw.png"
theme.layout_cornerse   = themes_path .. "vader/layouts/cornerse.png"

theme.awesome_icon = themes_path .. "vader/icons/manjaro64.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "manjaro"

return theme
