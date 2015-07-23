-- {{{ Tags
-- Define a tag table which hold all screen tags.
settings={}

settings[1] = {
   tags = {
      names    = { "web", "music", "gfx", 4, 5, 6, 7, 8, 9 },
      layout   = { layouts[8], layouts[8], layouts[8],
                   layouts[1], layouts[1], layouts[1],
                   layouts[1], layouts[1], layouts[1] },
      property = { { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 }
      }
   }
}

settings[2] = {
   tags = {
      names    = { "terms", "editors", 3, 4, 5, 6, 7, 8, 9 },
      layout   = { layouts[2], layouts[8], layouts[1],
                   layouts[1], layouts[1], layouts[1],
                   layouts[1], layouts[1], layouts[1] },
      property = { { mwfact=0.5, nmaster=1, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 },
                   { mwfact=0.5, nmaster=2, ncol=1 }
      }
   }
}

settings[3] = {
   tags = {
      names    = { "IM" },
      layout   = { layouts[3] },
      property = { { mwfact=0.3, nmaster=1, ncol=1 } }
   }
}

tags = {}

for s, scrsettings in ipairs(settings) do
   -- Each screen has its own tag table.
   tags[s] = awful.tag(scrsettings.tags.names, s, scrsettings.tags.layout)
   for i, property in ipairs(scrsettings.tags.property) do
      awful.tag.setproperty(tags[s][i], "mwfact", property.mwfact)
      awful.tag.setproperty(tags[s][i], "nmaster", property.nmaster)
      awful.tag.setproperty(tags[s][i], "ncol", property.ncol)
   end
end
-- }}}
