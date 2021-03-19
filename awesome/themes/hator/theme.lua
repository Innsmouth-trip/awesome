-------------------------------
--  "/home/hator/.config/awesome/themes/hator" awesome theme  --
--    By Anatoly Z. (Hator)   --

-- My code -
--
-- mykeyboardlayout = wibox.widget {
-- 	{
--     {
--           widget = awful.widget.keyboardlayout()
-- 	  },
--       fg = "#A4CC96", - text color
--   --  bg = "blue",
--     widget = wibox.container.background
--   },
--     bottom = 3,
--     color = "red",
--     widget = wibox.container.margin
-- }
-- How can I set a font of the text on the keyboard widget?
--
-- (topic withdrawn by authorPlease, will be automatically deleted in 24 hours unless flagged)help me <3

-------------------------------

local themes_path = require("gears.filesystem").get_themes_dir()
local dpi = require("beautiful.xresources").apply_dpi

-- {{{ Main
local theme = {}
theme.wallpaper = "/home/hator/.config/awesome/themes/hator/hator-background.jpeg"
-- }}}

theme.notification_icon_size = dpi(100)

-- {{{ Styles
theme.font      = "Ubuntu 9"
theme.taglist_font = "awesomefont 13"
--theme.tasklist_font = "Ubuntu Light 9"
theme.taglist_spacing     = 5
theme.taglist_fg_focus    = "#A4CC96"
theme.taglist_fg_occupied = "white"
theme.taglist_fg_urgent   = "#CC9393"
theme.taglist_fg_empty    = "#828282"


-- {{{ Colors
theme.fg_normal  = "white"
theme.fg_focus   = "#A4CC96"
theme.fg_urgent  = "#CC9393"
theme.bg_normal  = "#282C34" -- 3F3F3F 20232A
theme.bg_focus   = "#20232A" -- 1E2320
theme.bg_urgent  = "#3F3F3F"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = "#0B120B"
theme.border_focus  = "#416C48"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#282C34" --
theme.titlebar_bg_normal = "#282C34" --
-- }}}

-- {{{ Notification
theme.notification_max_width = 500
theme.maximized_hide_border = true
-- }}}
-- There are other variable sets
-- overriding the /home/hator/.config/awesome/themes/default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = dpi(20)
theme.menu_width  = dpi(150)

-- }}}

-- {{{ Календарь

-- }}}
-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = "/home/hator/.config/awesome/themes/hator/taglist/squarefz.png"
theme.taglist_squares_unsel = "/home/hator/.config/awesome/themes/hator/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc

theme.awesome_icon           = "/home/hator/.config/awesome/themes/hator/icons/awesome-icon.png"
theme.menu_submenu_icon      = "/home/hator/.config/awesome/themes/default/submenu.png"
--theme.time_icon           = "/home/hator/.config/awesome/themes/hator/icons/hourglass.svg"

-- }}}

-- {{{ Layout
theme.layout_tile       = "/home/hator/.config/awesome/themes/hator/layouts/tile.png"
theme.layout_tileleft   = "/home/hator/.config/awesome/themes/hator/layouts/tileleft.png"
theme.layout_tilebottom = "/home/hator/.config/awesome/themes/hator/layouts/tilebottom.png"
theme.layout_tiletop    = "/home/hator/.config/awesome/themes/hator/layouts/tiletop.png"
theme.layout_fairv      = "/home/hator/.config/awesome/themes/hator/layouts/fairv.png"
theme.layout_fairh      = "/home/hator/.config/awesome/themes/hator/layouts/fairh.png"
theme.layout_spiral     = "/home/hator/.config/awesome/themes/hator/layouts/spiral.png"
theme.layout_dwindle    = "/home/hator/.config/awesome/themes/hator/layouts/dwindle.png"
theme.layout_max        = "/home/hator/.config/awesome/themes/hator/layouts/max.png"
theme.layout_fullscreen = "/home/hator/.config/awesome/themes/hator/layouts/fullscreen.png"
theme.layout_magnifier  = "/home/hator/.config/awesome/themes/hator/layouts/magnifier.png"
theme.layout_floating   = "/home/hator/.config/awesome/themes/hator/layouts/floating.png"
theme.layout_cornernw   = "/home/hator/.config/awesome/themes/hator/layouts/cornernw.png"
theme.layout_cornerne   = "/home/hator/.config/awesome/themes/hator/layouts/cornerne.png"
theme.layout_cornersw   = "/home/hator/.config/awesome/themes/hator/layouts/cornersw.png"
theme.layout_cornerse   = "/home/hator/.config/awesome/themes/hator/layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "/home/hator/.config/awesome/themes/hator/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/home/hator/.config/awesome/themes/hator/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = "/home/hator/.config/awesome/themes/default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = "/home/hator/.config/awesome/themes/default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active  = "/home/hator/.config/awesome/themes/hator/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/home/hator/.config/awesome/themes/hator/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "/home/hator/.config/awesome/themes/hator/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/home/hator/.config/awesome/themes/hator/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "/home/hator/.config/awesome/themes/hator/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/home/hator/.config/awesome/themes/hator/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "/home/hator/.config/awesome/themes/hator/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/home/hator/.config/awesome/themes/hator/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "/home/hator/.config/awesome/themes/hator/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/home/hator/.config/awesome/themes/hator/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "/home/hator/.config/awesome/themes/hator/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/home/hator/.config/awesome/themes/hator/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "/home/hator/.config/awesome/themes/hator/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/home/hator/.config/awesome/themes/hator/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/home/hator/.config/awesome/themes/hator/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/home/hator/.config/awesome/themes/hator/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}


return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
