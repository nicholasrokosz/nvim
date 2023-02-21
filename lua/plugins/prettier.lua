return {
  "MunifTanjim/prettier.nvim",
  event = "BufEnter",
  dependencies = {
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
  },
  config = function()
    local prettier = require("prettier")

    prettier.setup({
      bin = "prettier", -- or `'prettierd'` (v0.22+)
      filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
      },
      cli_options = {
        arrow_parens = "avoid",
        bracket_spacing = true,
        bracket_same_line = false,
        embedded_language_formatting = "auto",
        end_of_line = "lf",
        html_whitespace_sensitivity = "css",
        -- jsx_bracket_same_line = false,
        jsx_single_quote = true,
        print_width = 80,
        prose_wrap = "preserve",
        quote_props = "as-needed",
        semi = false,
        single_attribute_per_line = true,
        single_quote = true,
        tab_width = 2,
        trailing_comma = "es5",
        use_tabs = false,
        -- vue_indent_script_and_style = false,
      },
    })
  end,
}
