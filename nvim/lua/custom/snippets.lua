local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.snippets = {
    c = {}
}



ls.add_snippets("c", {
  -- Snippet for 'if' statement
  s("if", {
    t({"if ("}), i(1, "condition"), t({")", "{"}),
    t({"", "\t"}), i(2, "// code"),
    t({"", "}"}),
  }),
  s("else", {
        t({"else", ""}),  -- Align 'else' with the current indentation level
        t({"{", ""}),
        t({"\t"}), i(1, "//code"),  -- Adjust this spacing to match your preferred indentation
        t({"", "}"}),
    }),
  s("for", {
        t("for ("), i(1, "init"), t("; "), i(2, "condition"), t("; "), i(3, "incr"), t(")"),
        t({"", "{"}),
        t({"", "\t"}),  -- Adjust the indentation here if necessary
        i(0),
        t({"", "}"}),
    }),
  s("while", {
        t("while ("), i(1, "condition"),t(")"),
        t({"", "{"}),
        t({"", "\t"}),  -- Adjust the indentation here if necessary
        i(0),
        t({"", "}"}),
    }),
})

