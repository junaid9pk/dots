return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function ()
        -- get_parser_configs is removed in nvim-treesitter main branch.
        -- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
        -- parser_config.blade = {
        --   install_info = {
        --     url = "https://github.com/EmranMR/tree-sitter-blade",
        --     files = {"src/parser.c"},
        --     branch = "main",
        --   },
        --   filetype = "blade"
        -- }

        require("nvim-treesitter").setup({
            ensure_installed = {
                "c",
                "vim",
                "vimdoc",
                "query",
                "html",
                "javascript",
                "typescript",
                "lua",
                "vim",
                "bash",
                "sql",
                "c_sharp",
                "php",
                "blade",
                "go",
                "gomod",
                "gowork",
                "gosum"
            },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            injections = {
                blade = {
                    javascript = {
                        pattern = [[
                            (script_element
                            (raw_text) @javascript)
                            (php_block
                            (raw_text) @javascript)
                        ]],
                    },
                    php = {},
                    html = {
                        pattern = [[
                            (element
                            (raw_text) @html)
                        ]],
                    },
                },
            },
            indent = {
                enable = true,
            },
            incremental_selection = {
                enable = true,
            }
        })
    end
}
