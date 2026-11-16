local languages = {
    "c",
    "vim",
    "vimdoc",
    "query",
    "html",
    "javascript",
    "typescript",
    "lua",
    "bash",
    "sql",
    "c_sharp",
    "php",
    "blade",
    "go",
    "gomod",
    "gowork",
    "gosum",
}

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install(languages)

        -- main branch no longer enables highlight/indent itself; see :h treesitter-highlight
        vim.api.nvim_create_autocmd("FileType", {
            callback = function(ev)
                local lang = vim.treesitter.language.get_lang(ev.match)
                if not lang or not pcall(vim.treesitter.start, ev.buf, lang) then
                    return
                end
                vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
