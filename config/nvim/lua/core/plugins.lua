local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
    { "akinsho/bufferline.nvim", version = "*", dependencies = { "nvim-tree/nvim-web-devicons" } },
    { "norcalli/nvim-colorizer.lua" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.6", dependencies = { "nvim-lua/plenary.nvim" } },
    { "nvim-telescope/telescope-ui-select.nvim" },
    { "nvim-tree/nvim-tree.lua" },
    { "akinsho/toggleterm.nvim", version = "*" },
    { "tpope/vim-fugitive" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim", dependencies = { "neovim/nvim-lspconfig" } },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp", dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
    }},
    { "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },
    { "saadparwaiz1/cmp_luasnip" },
    { "rafamadriz/friendly-snippets" },
    { import = "plugins" },
})
