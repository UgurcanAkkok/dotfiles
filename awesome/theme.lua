local gears = require("gears")
-- Theme handling library
beautiful = require("beautiful")

theme_dirs = {
    ["default"] = gears.filesystem.get_themes_dir() .. "default/theme.lua",
    ["sky"] = gears.filesystem.get_themes_dir() .. "sky/theme.lua",
    ["space"] = gears.filesystem.get_configuration_dir() .. "space/theme.lua",
    -- ["pink floyd"] = gears.filesystem.get_configuration_dir() .. "pinkfloyd/theme.lua",
    ["bladerunner"] = gears.filesystem.get_configuration_dir() .. "bladerunner/theme.lua",
    ["art"] = gears.filesystem.get_configuration_dir() .. "art/theme.lua",
}
beautiful.init(theme_dirs["art"])

-- SVG icons from https://github.com/tabler/tabler-icons and 
-- https://www.flaticon.com 
icons_path = gears.filesystem.get_configuration_dir().. "art/icons"
beautiful.layout_max  = icons_path .. "/arrows-maximize.png"
beautiful.layout_floating  = icons_path .. "/send.png"
beautiful.layout_tile  = icons_path .. "/layout.png"

local tag_dot_size = 4
-- taglist squares are now circle
beautiful.taglist_squares_sel = gears.surface.load_from_shape(
    -- beautiful.taglist_square_size,
    -- beautiful.taglist_square_size,
    tag_dot_size,tag_dot_size,
    function (cr)
        gears.shape.circle(cr, tag_dot_size, tag_dot_size)
    end,
    beautiful.fg_focus
)

beautiful.taglist_squares_unsel = gears.surface.load_from_shape(
    tag_dot_size,
    tag_dot_size,
    function (cr, width, height)
        gears.shape.circle(cr, tag_dot_size, tag_dot_size)
    end,
    beautiful.fg_normal
)

return beautiful
