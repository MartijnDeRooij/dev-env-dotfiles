-- debug adapter protocol (dap)
return{
    "mfussenegger/nvim-dap",
    opts = {},
    dependencies = {
        {
            "nvim-neotest/nvim-nio",
            opts = {},
        },
        -- fancy UI for the debugger
        {
            "rcarriga/nvim-dap-ui",
            -- stylua: ignore
            keys = {
                { "<leader>du", function() require("dapui").toggle({ }) end, desc = "Dap UI" },
                { "<leader>de", function() require("dapui").eval() end, desc = "Eval", mode = {"n", "v"} },
            },
            opts = {},
            config = function(_, opts)
                local status_ok, dap = pcall(require, "dap")
                if not status_ok then
                    return
                end
                local dapui = require("dapui")
                dapui.setup(opts)
                dap.listeners.after.event_initialized["dapui_config"] = function()
                    dapui.open({})
                end
                dap.listeners.before.event_terminated["dapui_config"] = function()
                    dapui.close({})
                end
                dap.listeners.before.event_exited["dapui_config"] = function()
                    dapui.close({})
                end
            end,
        },
        -- virtual text for the debugger
        {
            "theHamsta/nvim-dap-virtual-text",
            opts = {},
        },
        -- mason.nvim integration
        {
            "jay-babu/mason-nvim-dap.nvim",
            dependencies = "mason.nvim",
            cmd = { "DapInstall", "DapUninstall" },
            opts = {
                -- Makes a best effort to setup the various debuggers with
                -- reasonable debug configurations
                automatic_installation = true,

                -- You can provide additional configuration to the handlers,
                -- see mason-nvim-dap README for more information
                handlers = {},

                -- You'll need to check that you have the required things installed
                -- online, please don't ask me how to install them :)
                ensure_installed = {
                    -- Update this to ensure that you have the debuggers for the langs you want
                },
            },
        },

        -- p00f/clangd_extensions.nvim
        -- olexsmir/gopher.nvim,
        -- leoluz/nvim-dap-go,
        -- "mfussenegger/nvim-dap-python",
        -- "nvim-neotest/neotest",
        -- "nvim-neotest/neotest-python",
    },

    config = function ()
        require("dap").setup();
        local ok = pcall(require, "dap")
        if not ok then return end
        vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
        vim.keymap.set("n", "<F3>", ":lua require'dap'.step_over()<CR>")
        vim.keymap.set("n", "<F2>", ":lua require'dap'.step_into()<CR>")
        vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>")
        vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
        vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
        vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
        vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
    end
}
