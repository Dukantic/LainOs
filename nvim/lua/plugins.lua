local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



require("lazy").setup({
    {    -- LSP manager
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "clangd" },
        })

        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({})
    end
    },
	-- Vscode-like pictograms
	{
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},
	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},
	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
        require("cyberdream").setup({
            transparent = true,
            italic_comments = true,
            hide_fillchars = false,
            borderless_telescope = true,
            terminal_colors = true,
            cache = false,
            theme = {
                variant = "default",
                saturation = 1,
                highlights = {
                    Comment = { fg = "#696969", bg = "NONE", italic = true },
                },
                overrides = function(colors)
                    return {
                        Comment = { fg = colors.green, bg = "NONE", italic = true },
                        ["@property"] = { fg = colors.magenta, bold = true },
                    }
                end,
                colors = {
                     bg = "#1a1a1a",
                    green = "#00ff00",
                    magenta = "#ff00ff",
                },
            },
            extensions = {
                telescope = true,
                notify = true,
                mini = true,
            },
        })
    end
    },
    {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c" },
            highlight = {
                enable = true,
            },
        })
    end
    }
})



