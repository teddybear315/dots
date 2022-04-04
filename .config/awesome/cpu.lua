-------------------------------------------------
-- CPU Widget for Awesome Window Manager
-- Shows Current CPU Usage

-- @author Logan Houston 
-- @copyright 2022 Logan Houston
-------------------------------------------------

local awful = require("awful")
local wibox = require("wibox")
local watch = require("awful.widget.watch")

local GET_CPU_USAGE = 'bash -c "vmstat 1 2|tail -1|awk \'{print $15}\'"'

local cpu_widget = wibox.widget {
    markup = '<span background="#CA6702"> CPU: %% </span>',
    widget = wibox.widget.textbox
}

local function worker(user_args)

    local args = user_args or {}
    local color = args.color or "#333333"
    local font = args.font or 'NotoSansMono 10'
    
    local update_widget_text = function(widget, stdout, _, _, _)
        widget:set_markup('<span background="'..args.color..'" color="#eeeeee"> CPU: '..tostring(100-tonumber(stdout)).."% </span>")
        widget:emit_signal('widget::redraw_needed')
    end

    watch(GET_CPU_USAGE, 15, update_widget_text, cpu_widget)

    return cpu_widget

end

return setmetatable(cpu_widget, { __call = function(_, ...)
    return worker(...)
end })
