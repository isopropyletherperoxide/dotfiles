require('telescope').load_extension('media_files')

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    ensure_installed = {"c", "python", "cpp", "go", "haskell", "rust"},
    sync_install=true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = { "markdown" },
  },
    rainbow = {
	    enable = true,
    }
}

require("project_nvim").setup {
patterns = { ".git", "_darcs", "Makefile", "package.json", "*.cabal" },
        -- or leave it empty to use the default settings
    -- refer to the configuration section below
}


require'telescope'.setup {
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    } 
  },
}
require('code_runner').setup({
filetype_path = vim.fn.expand('~/.config/nvim/filetypes.json'),
})

-- require("zone").setup()

require('telescope').load_extension('projects')
--[[ require("mason").setup()
require("mason-lspconfig").setup()
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.diagnostics.eslint,
        require("null-ls").builtins.completion.spell,
    },
})
require'lspconfig'.clangd.setup{}
require'lspconfig'.pyright.setup{}
--]]
--[[require('bufferline').setup({
	options = {
	separator_style = "slant",
	mode = "tabs",
}
}) ]]--

