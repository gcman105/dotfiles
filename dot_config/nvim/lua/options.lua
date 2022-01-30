-- Load by calling `lua require('options')` from your init.vim

vim.cmd([[
set cpoptions+=$                " Show $ at the end of a change command
set foldopen+=jump
set shortmess+=c                " Don't pass messages to ins-completion-menu.
set nocompatible
" set viminfo=%,<800,'10,/50,:100,h,f0,n/Users/gcman105/.viminfo
  "           | |    |   |   |    | |  + viminfo file path
  "           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
  "           | |    |   |   |    + disable 'hlsearch' loading viminfo
  "           | |    |   |   + command-line history saved
  "           | |    |   + search history saved
  "           | |    + files marks saved
  "           | + lines saved each register (old name for <, vi6.2)
  "           + save/restore buffer list
hi ColorColumn ctermbg=darkgrey guibg=darkgrey
filetype plugin on
syntax on
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
vim.o.scrolloff = 8                 -- Keep the cursor 3 lines off of bottom when scrolling
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
vim.g.undodir = '~/.vim/undodir'
vim.g.undofile = true
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


vim.cmd([[
let base16colorspace=256        " Access colors present in 256 colorspace
"let g:EasyMotion_keys='hjklasdfbvcxuiopqwernm,.'
"let g:black_virtualenv = expand('/Users/gcman105/.venv')
let g:gist_use_password_in_gitconfig = 0
let g:loaded_python_provider = 1 " Disable Python 2 support:
let g:markdown_composer_open_browser = 0

let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
let g:nnn#command = 'nnn -Rd'
let g:python3_host_prog = expand('/Users/gcman105/.venv/bin/python')
let g:vifm_replace_netrw = 1
let g:vifm_replace_netrw_cmd = "Vifm"
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_install_global = 0
]])

--local o = vim.opt
--local wo = vim.wo
--local fn = vim.fn

--vim.cmd "filetype indent plugin on"
--vim.cmd "set inccommand=split"
--o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50" -- block in normal and beam cursor in insert mode
--o.updatetime = 300 -- faster completion
--o.timeoutlen = 400 -- time to wait for a mapped sequence to complete (in milliseconds)
--o.ttimeoutlen = 0 -- Time in milliseconds to wait for a key code sequence to complete
--o.backup = false -- creates a backup file
--o.swapfile = true -- enable/disable swap file creation
--o.dir = fn.stdpath("data") .. "/swp" -- swap file directory
--o.undofile = true -- enable/disable undo file creation
--o.undodir = fn.stdpath("data") .. "/undodir" -- set undo directory
--o.history = 500 -- Use the 'history' option to set the number of lines from command mode that are remembered.
--o.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
--o.fileencoding = "utf-8" -- the encoding written to a file
--o.conceallevel = 0 -- so that `` is visible in markdown files
--o.number = true -- set numbered lines
--o.relativenumber = true -- set relative numbered lines
--o.cmdheight = 2 -- space for displaying messages/commands
--o.showmode = false -- we don't need to see things like -- INSERT -- anymore
--o.showtabline = 2 -- always show tabs
--o.laststatus = 2 --  The value of this option influences when the last window will have a status line (2 always)
--o.smartcase = true -- smart case
--o.smartindent = true -- make indenting smarter again
--o.splitbelow = true -- force all horizontal splits to go below current window
--o.splitright = true -- force all vertical splits to go to the right of current window
--o.expandtab = true -- convert tabs to spaces
--o.shiftwidth = 2 -- the number of spaces inserted for each indentation
--o.tabstop = 2 -- how many columns a tab counts for
--o.termguicolors = true -- set term gui colors (most terminals support this)
--o.cursorline = true -- highlight the current line
--o.scrolloff = 3 -- Minimal number of screen lines to keep above and below the cursor
--o.sidescrolloff = 5 -- The minimal number of columns to scroll horizontally
--o.hlsearch = true -- highlight all matches on previous search pattern
--o.ignorecase = true -- ignore case in search patterns
--o.foldenable = false -- disable folding; enable with zi
--o.foldmethod = "expr"
--o.foldexpr = "nvim_treesitter#foldexpr()"
---- o.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<"
--o.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"
--o.shortmess = o.shortmess + "c" -- prevent "pattern not found" messages
--wo.colorcolumn = "99999"
--o.wildmode = "full"
--o.lazyredraw = true -- do not redraw screen while running macros
--o.grepprg = "rg --hidden --vimgrep --smart-case --"
--o.completeopt = {"menu", "menuone", "noselect", "noinsert"} -- A comma separated list of options for Insert mode completion
--o.wildignorecase = true -- When set case is ignored when completing file names and directories
--o.wildignore = [[
--.git,.hg,.svn
--*.aux,*.out,*.toc
--*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
--*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
--*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
--*.mp3,*.oga,*.ogg,*.wav,*.flac
--*.eot,*.otf,*.ttf,*.woff
--*.doc,*.pdf,*.cbr,*.cbz
--*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
--*.swp,.lock,.DS_Store,._*
--*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
--]]
