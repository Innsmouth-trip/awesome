local naughty = require('naughty')
local awful = require('awful')
local wibox = require('wibox')
local beautiful = require('beautiful')
local gears = require('gears')

local m = {
    step = 5,
    control = 'Master',
}

m.up = function() m.update(m.step..'%+') end
m.down = function() m.update(m.step..'%-') end
m.toggle = function() m.update('toggle') end


 m.update = function(value)
    awful.spawn.easy_async(
        {'amixer', value and 'sset' or 'sget', m.control, value},
        function(stdout, stderr, reason, code)
            if code > 0 then
                naughty.notify{
                    title = 'mixer error',
                    text = stderr == '' and reason or stderr
                }
            end
            m.widget.level.value = stdout:match('%[(%d+)%%%]')
            m.widget.level.mute.checked = stdout:find('%[on+%]') ~= nil
        end)
end

m.widget = wibox.widget{
    {
        {
            id = 'mute',
            paddings = 0,
            check_border_color = beautiful.bg_normal,
            check_border_width = 2,
            color = "#A4CC96",
            shape = gears.shape['circle'],
            widget = wibox.widget.checkbox
        },
        id = 'level',
        max_value = 100,
        border_width = 1,
        paddings = -3,
        colors = {"#A4CC96",},
        thickness = 4,
        start_angle = math.pi/2,
        layout = wibox.container.arcchart
    },
    reflection = {horizontal=true, vertical=false},
    layout = wibox.container.mirror
}

m.widget:buttons(awful.util.table.join(
    awful.button({ }, 2, m.toggle),
    awful.button({ }, 4, m.up),
    awful.button({ }, 5, m.down)
))

m.update()
return m
