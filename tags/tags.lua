local awful = require('awful')
local gears = require('gears')
local icons = require('theme.icons')
local apps = require('configuration.apps')

awful.tag.add("1", {
    icon               = "/home/arog/.config/awesome/icons/home.svg",
    layout             = awful.layout.suit.max,
    --master_fill_policy = "master_width_factor",
    --gap_single_client  = true,
    --gap                = 5,
    screen             = s,
    selected           = true,
})

awful.tag.add("2", {
    icon = "/home/arog/.config/awesome/icons/web.svg",
    layout = awful.layout.suit.max,
    screen = s,
    --selected = true,
})

awful.tag.add("3", {
	icon = "/home/arog/.config/awesome/icons/dev.svg",
	layout = awful.layout.suit.tile,
	screen = s,
})

awful.tag.add("4", {
	icon = "/home/arog/.config/awesome/icons/folder.svg",
	layout = awful.layout.suit.tile,
	screen = s,
})

awful.tag.add("5", {
	icon = "/home/arog/.config/awesome/icons/settings.svg",
	layout = awful.layout.suit.tile,
	screen = s,
})

awful.tag.add("6", {
	icon = "/home/arog/.config/awesome/icons/gaming.svg",
	layout = awful.layout.suit.max,
	screen = s,
})

awful.tag.add("7", {
	icon = "/home/arog/.config/awesome/icons/music.svg",
	layout = awful.layout.suit.tile,
	screen = s,
})

awful.tag.add("8", {
	icon = "/home/arog/.config/awesome/icons/video.svg",
	layout = awful.layout.suit.tile,
	screen = s,
})

awful.tag.add("9", {
	icon = "/home/arog/.config/awesome/icons/lap.svg",
	layout = awful.layout.suit.floating,
	screen = s,
})

awful.layout.layouts = {
	awful.layout.suit.tile,
	awful.layout.suit.max,
	awful.layout.suit.floating,

}
