-- Load by calling `lua require('mappings')` from your init.vim

local default_options = {noremap = true, silent = true}
-- local expr_options = {noremap = true, expr = true, silent = true}

-- map the leader key
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = ' '

local key_mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
    )
end

--key_mapper('', '<C-b>', [[<cmd>Telescope buffers<CR>]])
key_mapper('n', '<C-h>', '<C-w>h')
key_mapper('n', '<C-j>', '<C-w>j')
key_mapper('n', '<C-k>', '<C-w>k')
key_mapper('n', '<C-l>', '<C-w>l')
key_mapper('n', '<F8>', ':TagbarToggle<CR>')
key_mapper('n', '<F18>', '<C-i>')    -- Using Karabiner to avoid collision between <Tab> and <C-i>
key_mapper('n', 'gf', ':edit <cfile><CR>')
key_mapper('i', 'jj', '<ESC>')

key_mapper('n', '<Leader>h2', ':HopChar2<CR>')
key_mapper('n', '<Leader>ha', [[<cmd>lua require("harpoon.mark").add_file()<CR>]])
key_mapper('n', '<Leader>hl', ':HopLine<CR>')
key_mapper('n', '<Leader>hm', [[<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]])
key_mapper('n', '<Leader>hp', ':HopPattern<CR>')

key_mapper('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<CR>")
key_mapper('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<CR>")
key_mapper('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<CR>")
key_mapper('o', 'F', "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<CR>")
key_mapper('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<CR>")
key_mapper('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<CR>")

key_mapper('n', '<Leader>b', [[<cmd>Telescope buffers<CR>]])
key_mapper('n', '<Leader>tb', [[<cmd>Telescope builtin<CR>]])
key_mapper('n', '<Leader>td', [[<cmd>Telescope lsp_definitions<CR>]])
key_mapper('n', '<Leader>tg', [[<cmd>Telescope git_files<CR>]])
key_mapper('n', '<Leader>tj', [[<cmd>Telescope jumplist<CR>]])
key_mapper('n', '<Leader>tm', [[<cmd>Telescope marks<CR>]])
key_mapper('n', '<Leader>tq', [[<cmd>Telescope quickfix<CR>]])
key_mapper('n', '<Leader>tr', [[<cmd>Telescope lsp_references<CR>]])
key_mapper('n', '<Leader>ts', [[<cmd>Telescope grep_string<CR>]])

key_mapper('n', '<Leader>sf', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]])
key_mapper('', '<Leader>', ':WhichKey " "<CR>')
key_mapper('n', '<Leader>v', ':Vifm . .<CR>')

key_mapper('n', '<Leader>n', ':NnnPicker %:p:h<CR>')
key_mapper('n', '<Leader>qc', ':cclose<CR>')         -- Close QuickFix
key_mapper('n', '<Leader>qo', ':cope<CR>')           -- Open QuickFix
key_mapper('n', '<Leader>u', ':UndotreeShow<CR>')

key_mapper('n', '<Leader>1', [[<cmd>lua require("harpoon.ui").nav_file(1)<CR>]])
key_mapper('n', '<Leader>2', [[<cmd>lua require("harpoon.ui").nav_file(2)<CR>]])
key_mapper('n', '<Leader>3', [[<cmd>lua require("harpoon.ui").nav_file(3)<CR>]])
key_mapper('n', '<Leader>4', [[<cmd>lua require("harpoon.ui").nav_file(4)<CR>]])
key_mapper('n', '<Leader>5', [[<cmd>lua require("harpoon.ui").nav_file(5)<CR>]])

---- center search results
--map("n", "n", "nzz", default_options)
--map("n", "N", "Nzz", default_options)

---- Deal with visual line wraps
--map("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_options)
--map("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_options)

---- better indenting
--map("v", "<", "<gv", default_options)
--map("v", ">", ">gv", default_options)

---- paste over currently selected text without yanking it
--map("v", "p", "\"_dP", default_options)

---- Tab switch buffer
--map("n", "<TAB>", ":bnext<CR>", default_options)
--map("n", "<S-TAB>", ":bprevious<CR>", default_options)

---- Cancel search highlighting with ESC
--map("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_options)

---- Resizing panes
-- map("n", "<shift><Left>", ":vertical resize +1<CR>", default_options)
-- map("n", "<shift><Right>", ":vertical resize -1<CR>", default_options)
-- map("n", "<shift><Up>", ":resize -1<CR>", default_options)
-- map("n", "<shift><Down>", ":resize +1<CR>", default_options)

---- Autocorrect spelling from previous error
--map("i", "<c-f>", "<c-g>u<Esc>[s1z=`]a<c-g>u", default_options)

---- Move selected line / block of text in visual mode
-- map("x", "K", ":move '<-2<CR>gv-gv", default_options)
-- map("x", "J", ":move '>+1<CR>gv-gv", default_options)

---- starlite mappings
--map("n", "*", "<cmd>lua require'starlite'.star()<CR>", default_options)
--map("n", "g*", "<cmd>lua require'starlite'.g_star()<CR>", default_options)
--map("n", "#", "<cmd>lua require'starlite'.hash()<CR>", default_options)
--map("n", "g#", "<cmd>lua require'starlite'.g_hash()<CR>", default_options)
