return  {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            -- Usando typescript-language-server para Angular
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
                cmd = { "typescript-language-server", "--stdio" },
            })

            -- Configurações adicionais de LSP
            require("lspconfig").html.setup({
                cmd = { "vscode-html-language-server", "--stdio" },
                capabilities = capabilities,
            })
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })
            lspconfig.angularls.setup({
                capabilities = capabilities,
            })

            -- Mapeamentos de teclas
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>ts", vim.diagnostic.open_float, {})
            vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, {})
        end,
    },
}

