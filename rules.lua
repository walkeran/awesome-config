-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = true,
                     keys = clientkeys,
                     buttons = clientbuttons } },
    { rule = { class = "MPlayer" },
      properties = { floating = true } },
    { rule = { class = "pinentry" },
      properties = { floating = true } },
    { rule = { class = "gimp" },
      properties = { floating = true } },
    { rule = { class = "xcalc" },
      properties = { floating = true } },
    { rule = { class = "Pidgin", role="conversation" },
       properties = { tag   = tags[3][1] },
          callback   = awful.client.setslave },
    { rule = { class = "Pidgin", role="buddy_list" },
       properties = { tag   = tags[3][1] }, },
}
-- }}}
