vim.cmd("colorscheme rose-pine")

local set_highlights = function()
    local hls = {
        MiniHipatternsTodo = { fg = "#ff0000" },
        MiniHipatternsDone = { fg = "#00ff0c" },
        MiniHipatternsNote = { fg = "#00ffe0" },
        MiniHipatternsHack = { fg = "#ffe800" },
        MiniHipatternsFixme = { fg = "#ffb600" },
    }

    for pattern, groups in pairs(hls) do
        vim.api.nvim_set_hl(0, pattern, groups)
    end
end

set_highlights()
