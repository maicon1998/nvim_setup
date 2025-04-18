return {
    {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"c", "javascript",  "lua", "vim", "vimdoc", "html", "css", "python" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
            })
        end
    }
}
