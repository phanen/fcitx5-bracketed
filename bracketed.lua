-- wrap commit string in bracketed mode (when in terminal)
-- https://fcitx-im.org/wiki/Lua#Use_Fcitx_Lua_API
-- ln -sf bracketed.lua ~/.local/share/fcitx5/lua/imeapi/extensions/

local fcitx = require('fcitx')
local enabled = {
  -- kitty use ibus, no program name
  -- https://github.com/fcitx/fcitx5/blob/00c340afa2a6d4c8808c8c4eb7da0a339edf67f2/src/frontend/ibusfrontend/ibusfrontend.cpp#L728
  [''] = true,
}
function wrap_bracketed_mode(str)
  -- TODO: filter?
  if not enabled[fcitx.currentProgram()] or str:match('^\x1b') then return end -- ignore unexpected escape sequence
  return '\x1b[200~' .. str .. '\x1b[201~'
end
fcitx.addConverter('wrap_bracketed_mode')
