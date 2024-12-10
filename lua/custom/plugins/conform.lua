return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform"
        )
        conform.setup({
            formatters_by_ft = {
                c = { "clang-format" },
                python = { "isort", "black" },
                lua = { "luaformatter" },
                json = { "prettier" },
                javascript = { "prettier" },
                html = { "prettier" },
                markdown = { "prettier" },
                java = { "google-java-format" },
                xml = { "xmlformatter" },
                bash = { "shfmt" },
                cmake = { "cmakelang" }
            },
            formatters = {
                clang_format = {
                    prepend_args = { "--fallback-style=Microsoft" },
                }
            },
            format_on_save = function(bufnr)
                if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                    return
                end
                return {
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 500
                }
            end
        })
        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({ lsp_fallback = true, async = false, timeout_ms = 500 })
        end, { desc = "Format file or range (in visual mode)" })

        vim.api.nvim_create_user_command("FormatDisable", function(args)
            if args.bang then
                -- FormatDisable! will disable formatting just for this buffer
                vim.b.disable_autoformat = true
            else
                vim.g.disable_autoformat = true
            end
        end, {
            desc = "Disable autoformat-on-save",
            bang = true,
        })
        vim.api.nvim_create_user_command("FormatEnable", function()
            vim.b.disable_autoformat = false
            vim.g.disable_autoformat = false
        end, {
            desc = "Re-enable autoformat-on-save", })
    end
}
