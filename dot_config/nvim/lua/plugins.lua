-- Load by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    local use = require('packer').use

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'EdenEast/nightfox.nvim' -- Set colors scheme

    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    use 'neovim/nvim-lspconfig'

    -- cmp plugins
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-nvim-lua"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lsp-document-symbol"

    use "williamboman/nvim-lsp-installer"
    use "sumneko/lua-language-server"

    -- snippets
    use 'L3MON4D3/LuaSnip'
    use "rafamadriz/friendly-snippets"
    use 'saadparwaiz1/cmp_luasnip'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use 'mattn/emmet-vim'
    use 'ThePrimeagen/harpoon'
    use 'farmergreg/vim-lastplace'
    use 'jiangmiao/auto-pairs'
    use 'liuchengxu/vim-which-key'
    use 'majutsushi/tagbar'
    use 'mbbill/undotree'
    use 'mcchrish/nnn.vim'
    use 'mhinz/vim-startify'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'phaazon/hop.nvim'
    use 'vifm/vifm.vim'

end)

