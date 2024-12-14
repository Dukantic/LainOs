local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.snippets = {
    c = {}
}

ls.add_snippets("c", {
    -- Fonction C
    s("func", {
        t({"", ""}),
        t("void "), i(1, "function_name"), t("("), i(2, "parameters"), t({")", ""}),
        t("{"), t({"", "  "}), i(3, "// TODO"), t({"", "}"}),
    }),

    -- Boucle for
    s("for", {
        t({"", ""}),
        t("for (int "), i(1, "i"), t(" = 0; "), i(1), t(" < "), i(2, "n"), t("; "), i(1), t({"++)", ""}),
        t("{"), t({"", "  "}), i(3, "// TODO"), t({"", "}"}),
    }),

    -- Boucle while
    s("while", {
        t({"", ""}),
        t("while ("), i(1, "condition"), t({")", ""}),
        t("{"), t({"", "  "}), i(2, "// TODO"), t({"", "}"}),
    }),

    -- Condition if
    s("if", {
        t({"", ""}),
        t("if ("), i(1, "condition"), t({")", ""}),
        t("\t{"), t({"", "  "}),t("\t"), i(2, "// TODO"), t({"", "\t}"}),
    }),

    -- Else if
    s("elif", {
        t({"", ""}),
        t("else if ("), i(1, "condition"), t({")", ""}),
        t("{"), t({"", "  "}), i(2, "// TODO"), t({"", "}"}),
    }),

    -- Else
    s("else", {
        t({"", ""}),
        t("else"), t({""}),
        t("{"), t({"", "  "}), i(1, "// TODO"), t({"", "}"}),
    }),

    -- Switch
    s("switch", {
        t({"", ""}),
        t("switch ("), i(1, "variable"), t({")", ""}),
        t("{"), t({"", "  case "}), i(2, "value"), t({":", "    "}), i(3, "// TODO"), t({"", "    break;", ""}),
        t("  default:"), t({"", "    "}), i(4, "// Default case"), t({"", "    break;"}),
        t({"", "}"}),
    }),

    -- Macro define
    s("define", {
        t("#define "), i(1, "MACRO_NAME"), t(" "), i(2, "value"),
    }),

    -- Include
    s("include", {
        t("#include <"), i(1, "header_file"), t(">"),
    }),

    -- Classe simple
    s("class", {
        t({"", ""}),
        t("class "), i(1, "ClassName"), t({"", "{"}),
        t({"public:"}), t({"", "  "}), i(2, "ClassName();"), t({"", ""}),
        t("private:"), t({"", "  "}), i(3, "// Private members"), t({"", "};"}),
    }),
})

