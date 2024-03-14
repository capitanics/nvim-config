return {
    ('NvChad/nvterm'),
    config = function()
        require("nvterm").setup({
            terminals = {
                shell = vim.o.shell,
                list = {},
                type_opts = {
                    float = {
                        relative = 'editor',
                        row = 0.3,
                        col = 0.25,
                        width = 0.5,
                        height = 0.4,
                        border = "single",
                    },
                    horizontal = { location = "rightbelow", split_ratio = .3, },
                    vertical = { location = "rightbelow", split_ratio = .5 },
                }
            },
            behavior = {
                autoclose_on_quit = {
                    enabled = false,
                    confirm = true,
                },
                close_on_exit = true,
                auto_insert = true,
            },
        })

        vim.keymap.set("n", "<M-i>", function() require("nvterm.terminal").toggle "float" end)
        vim.keymap.set("t", "<M-i>", function() require("nvterm.terminal").toggle "float" end)
        vim.keymap.set("t", "<M-h>", function() require("nvterm.terminal").toggle "horizontal" end)
        vim.keymap.set("n", "<M-h>", function() require("nvterm.terminal").toggle "horizontal" end)
        vim.keymap.set("n", "<M-ç>", function() require("nvterm.terminal").new "horizontal" end)
        vim.keymap.set("n", "<M-nv>", function() require("nvterm.terminal").new "vertical" end)
        vim.keymap.set("t", "<M-v>", function() require("nvterm.terminal").toggle "vertical" end)
        vim.keymap.set("n", "<M-v>", function() require("nvterm.terminal").toggle "vertical" end)
    end,
}
