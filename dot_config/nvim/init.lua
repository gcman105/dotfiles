require('plugins')

vim.cmd([[
set cpoptions+=$                " Show $ at the end of a change command
set foldopen+=jump
set shortmess+=c                " Don't pass messages to ins-completion-menu.
]])

--vim.o.guicursor = n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175
--vim.o.rtp+ = /usr/local/opt/fzf
--vim.o.statusline^ = %{coc#status()}%{get(b:,'coc_current_function','')}
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.o.autowrite = true
vim.o.background = 'dark'           -- or light
vim.o.backspace = '2'               -- Allow backspacing over indent, eol, and the start of an insert
vim.o.backup = false                -- Some servers have issues with backup files, see COC #649.
vim.o.clipboard = 'unnamed'
vim.o.cmdheight = 2                 -- Give more space for displaying messages.
vim.o.cursorline = true
vim.o.errorbells = false
vim.o.expandtab = true              -- Insert spaces when TAB is pressed.
vim.o.foldlevel = 3                 -- Set the opening fold level
vim.o.formatoptions = 'qrn1'
vim.o.hidden = true                 -- Switch between buffers without saving
vim.o.hlsearch = true               -- Highlight searching
vim.o.ignorecase = false
vim.o.incsearch = true              -- Set incremental searching--
vim.o.laststatus = 2                -- Always show the status line
vim.o.lazyredraw = true             -- Don't update the display while executing macros
vim.o.mouse = 'a'
vim.o.scrolloff = 5                 -- Keep the cursor 3 lines off of bottom when scrolling
vim.o.shiftround = true
vim.o.shiftwidth = 4                -- Indentation amount for < and > commands.
vim.o.showfulltag = true            -- When completing by tag, show the whole tag, not just the function name
vim.o.showmatch = true              -- Show matching brackets.
vim.o.softtabstop = 4
vim.o.spelllang = 'en_gb'           -- Set to British English and Spanish
vim.o.splitbelow = true             -- More natural split below
vim.o.splitright = true             -- More natural split right
vim.o.startofline = false           -- Do not jump to first character with page commands.
vim.o.swapfile = false
vim.o.synmaxcol = 512               -- Syntax coloring lines that are too long just slows down the world
vim.o.tabstop = 4                   -- Render TABs using this many spaces.
vim.o.termguicolors = true          -- important!!
vim.o.textwidth = 79
vim.o.timeoutlen = 800              -- A little bit more time for macros
vim.o.ttimeoutlen = 50              -- Make Esc work faster
vim.o.undodir = '~/.vim/undodir'
vim.o.undofile = true
vim.o.updatetime = 300              -- Longer updatetime (default is 4000 ms  =  4 s) leads to delays and poor user experience
vim.o.virtualedit = 'all'           -- Allow cursor into places it cant normally go
vim.o.wildmenu = true               -- Command line completion
vim.o.wrap = false
vim.o.writebackup = false
vim.wo.colorcolumn = '80'
vim.wo.foldcolumn = '3'             -- Set the fold gutter width
vim.wo.foldmethod = 'marker'
vim.wo.number = true                -- Show lines numbers
vim.wo.relativenumber = true        -- Make line numbers relative
vim.wo.signcolumn = 'yes'           -- Always show the signcolumn, otherwise it would shift the text each time.

vim.g.mapleader = ' '
local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end
key_mapper('', '<C-b>', ':buffers<CR>:buffer<Space>')
key_mapper('', '<C-h>', '<C-w>h')
key_mapper('', '<C-j>', '<C-w>j')
key_mapper('', '<C-k>', '<C-w>k')
key_mapper('', '<C-l>', '<C-w>l')
key_mapper('', '<F18>', '<C-i>')    -- Using Karabiner to avoid collision between <Tab> and <C-i>
key_mapper('', 'gf', ':edit <cfile><CR>')
key_mapper('i', 'jj', '<ESC>')

-- Theme ---------------------------------------------------------------------
vim.cmd[[colorscheme dracula]]

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_lsp', 'coc'}}},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- LSP -----------------------------------------------------------------------
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.lua.setup{
    on_attach=require'completion'.on_attach
}


-- Treesitter ----------------------------------------------------------------
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}


-- Autocommands --------------------------------------------------------------
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end

  autocmd BufEnter * lua require'completion'.on_attach()
]])
