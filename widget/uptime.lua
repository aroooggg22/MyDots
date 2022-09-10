local beautiful = require('beautiful')
local wibox = require('wibox')
local watch = require('awful.widget.watch')

local Kernel_widget = {}

KNL_CMD = [[ bash -c "uptime | awk '{print $3}'"]]
timeout = 60

up_wdt = wibox.widget {
    {
        {{
            id = 'knl_wdt',
            widget = wibox.widget.textbox,
	    align  = 'center',
            valign = 'center',
	    forced_height = 25,
	    forced_width = 100,
	    font = 'Noto Sans 12',
        },
        widget = wibox.container.margin(_,Wdt_lmgn,Wdt_rmgn,_,_,_,_),},
        valign = 'center',
	halign = 'center',
	visible = true,
        widget = wibox.container.place,
    },
    fg = beautiful.color9,
    --bg = Wdt_bg,
    shape = Wdt_shape,
    widget = wibox.container.background
}


function Update_knl_widget(widget,stdout)
    widget:get_children_by_id('knl_wdt')[1]:set_text( 'UP: ' .. stdout)
end
--       

watch(KNL_CMD,timeout,Update_knl_widget,up_wdt)
return Kernel_widget

--widget = wibox.container.margin(_,Wdt_lmgn,Wdt_rmgn,_,_,_,_),},
