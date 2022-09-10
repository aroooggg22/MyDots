local awful = require('awful')
local gears = require('gears')
local icons = require('theme.icons')
local apps = require('configuration.apps')
-- tags and icons
-- 
local tags = {
  {
    icon = "/home/arog/.config/awesome/icons/home.svg",
    type = 'home',
    defaultApp = apps.default.ro,
    screen = 1
  },
  {
    icon = "/home/arog/.config/awesome/icons/web.svg",
    type = 'web',
    defaultApp = apps.default.browser,
    screen = 1
  },
  {
    icon = "/home/arog/.config/awesome/icons/dev.svg",
    type = 'dev',
    icon_only = true,
    screen = 1
  },
  {
    icon = "/home/arog/.config/awesome/icons/folder.svg",
    type = 'fileing',
    defaultApp = apps.default.social,
    screen = 1
  },
  {
    icon = "/home/arog/.config/awesome/icons/settings.svg",
    type = 'settings',
    defaultApp = apps.default.game,
    screen = 1
  },
  {
    icon = "/home/arog/.config/awesome/icons/gaming.svg",
    type = 'gameing',
    defaultApp = apps.default.files,
    screen = 1
  },
  {
    icon = "/home/arog/.config/awesome/icons/music.svg",
    type = 'music',
    defaultApp = apps.default.music,
    screen = 1
  },
  {
    icon = "/home/arog/.config/awesome/icons/video.svg",
    type 'videos',
    screen = 1
  },
  {
    icon = "/home/arog/.config/awesome/icons/lap.svg",
    type = 'any',
    defaultApp = apps.default.rofi,
    screen = 1

  }
}
-- Layouts, Order matters.
awful.layout.layouts = {
  awful.layout.suit.max,
  awful.layout.suit.tile,
  awful.layout.suit.floating
}

awful.screen.connect_for_each_screen(
  function(s)
    for i, tag in pairs(tags) do
      awful.tag.add(
        i,
        {
          icon = tag.icon,
          icon_only = true,
          layout = awful.layout.suit.tile,
          gap_single_client = true,
          gap = 0, -- windows gaps
          screen = s,
          defaultApp = tag.defaultApp,
          selected = i == 1
        }
      )
    end
  end
)

-- THIS is for max layout
--[[
_G.tag.connect_signal(
  'property::layout',
  function(t)
    local currentLayout = awful.tag.getproperty(t, 'layout')
    if (currentLayout == awful.layout.suit.max) then
      t.gap = 0 
    else
      t.gap = 0 
    end
  end
)
--]]
