local ls = require('luasnip')
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets('c', {
    s("for", fmt("for ({}) {{\n\t{}\n}}", {
        i(1, "int i = 0; i < N; i++"),
        i(0) -- position du curseur
    })),
    s("if", fmt("if ({}) {{\n\t{}\n}}", {
        i(1, "condition"),
        i(0) -- position du curseur
    })),
    s("else", fmt("else\n{{\n\t{}\n}}", {
        i(0) -- position du curseur à l'intérieur des accolades
    })),
})

