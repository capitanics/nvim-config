return {
    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex),
    vim.keymap.set("t", "<C-x>", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true)),
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv"),
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv"),
    vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>'),





    -- DAP UI keymaps
    -- vim.keymap.set("n", "<leader>db", "<Cmd>DapToggleBreakpoint <CR>"),
    -- vim.keymap.set("n", "<leader>dc", "<Cmd>DapContinue <CR>"),
    -- vim.keymap.set("n", "<leader>drf", "<Cmd>DapRestartFrame <CR>"),
    -- vim.keymap.set("n", "<leader>dsi", "<Cmd>DapStepInto <CR>"),
    -- vim.keymap.set("n", "<leader>dsO", "<Cmd>DapStepOver <CR>"),
    -- vim.keymap.set("n", "<leader>dso", "<Cmd>DapStepOut <CR>"),
    -- vim.keymap.set("n", "<leader>dt", "<Cmd>DapTerminate <CR>"),
    -- vim.keymap.set("n", "<leader>dpr", function()
    --     require("dap").continue()
    -- end)
}
