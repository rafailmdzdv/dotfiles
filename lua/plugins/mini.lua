return {
    {
        "echasnovski/mini.pairs",
        version = "*",
        config = true,
    },

    {
        "echasnovski/mini.hipatterns",
        version = "*",
        opts = function()
            local hipatterns = require("mini.hipatterns")
            local opts = {
                highlighters = {
                    fixme = { mdpattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
                    hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
                    todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
                    note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

                    hex_color = hipatterns.gen_highlighter.hex_color(),
                    extmark_opts = { priority = 2000 },
                },
            }
            return opts
        end,
    },
}
