require "nvchad.options"
require "custom.snippets"

-- add yours here!

local cmp = require'cmp'
local luasnip = require'luasnip'

cmp.setup({
    snippet = {
        expand = function(args)
            -- Utiliser LuaSnip pour l'expansion des snippets
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = {
        --['<Tab>'] = cmp.mapping.select_next_item(),
        --['<S-Tab>'] = cmp.mapping.select_prev_item(),
        --['<C-b>'] = cmp.mapping.scroll_docs(-4),
        --['<C-f>'] = cmp.mapping.scroll_docs(4),
        --['<C-Space>'] = cmp.mapping.complete(),
        --['<C-e>'] = cmp.mapping.abort(),
        --['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
        { name = 'luasnip' , group_index = 1}, -- Utiliser LuaSnip comme source de snippets
        { name = 'nvim_lsp', group_index = 2 },
        { name = 'buffer' , group_index = 3},
        { name = 'path' , group_index = 4},
    })
})

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true 
