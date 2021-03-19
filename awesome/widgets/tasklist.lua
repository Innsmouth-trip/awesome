local naughty = require('naughty')
local awful = require('awful')
local wibox = require('wibox')
local beautiful = require('beautiful')
local gears = require('gears')
-- Create a taglist widget
s.mytaglist = awful.widget.taglist {
    screen  = s,
    filter  = awful.widget.taglist.filter.all,
    buttons = taglist_buttons,

}

-- Create a tasklist widget
s.mytasklist = awful.widget.tasklist {
    screen  = s,
    filter  = awful.widget.tasklist.filter.currenttags,
    buttons = tasklist_buttons,

style    = {

--бордеры квадратные
    shape_border_width = 1,
    shape_border_color = '#777777',
    shape  = gears.shape.rectangle,

},

layout   = { --расстояние между вкладками
    spacing = 1,
    spacing_widget = {
        {
            forced_width = 1,
            widget       = wibox.widget.textbox
        },
        valign = 'center',
        halign = 'center',
        widget = wibox.container.place,
    },
    layout  = wibox.layout.flex.horizontal
},

widget_template = { -- шаблон строения вкладки
    {
        {
            {
                {
                    id     = 'icon_role',
                    widget = wibox.widget.imagebox,
                },
                margins = 5, -- для уменьшения значков окон
                widget  = wibox.container.margin,
            },
            {
                id     = 'text_role',
                widget = wibox.widget.textbox,
            },
            layout = wibox.layout.fixed.horizontal,
        },
        left  = 5,
        right = 5,
        widget = wibox.container.margin
    },
    id     = 'background_role',
    widget = wibox.container.background,
},

}
