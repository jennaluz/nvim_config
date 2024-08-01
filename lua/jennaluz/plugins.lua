return require('packer').startup(function(use)
	-- Packer can manage itself
  	use 'wbthomason/packer.nvim'

	-- colorscheme
	use 'shaunsingh/nord.nvim'

    -- telescope
    use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    -- markdown
    use ({
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        setup = function() vim.g.mkdp_filetypes = { 'markdown' } end,
        ft = { 'markdown' }
    })

    use({
        "stevearc/conform.nvim",
        config = function()

        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                -- Conform will run multiple formatters sequentially
                python = { "isort", "black" },
                -- Use a sub-list to run only the first available formatter
                javascript = { { "prettierd", "prettier" } },
                typescript = { { "prettierd", "prettier" } },
                javascriptreact = { { "prettierd", "prettier" } },
                typescriptreact = { { "prettierd", "prettier" } },
                --
                cpp = { "clang_format" },
                c = { "clang_format" },
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>c", function()
            conform.format({ lsp_fallback = true })
        end)

        end,
    })
end)
