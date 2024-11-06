local cmp = require'cmp'

cmp.setup {
    snippet = {
        expand = function(args)
            -- Ne rien faire pour les snippets
        end,
    },
    sources = {
        { name = 'buffer' }, -- Complétion à partir du buffer
        { name = 'path' },   -- Complétion des chemins de fichiers
        -- Aucune source de snippets ici
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
    },
}

