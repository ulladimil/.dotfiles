if !exists('g:loaded_telescope') | finish | endif

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fr <cmd>Telescope resume<cr>

lua << EOF
vim.keymap.set('n', '<leader>fg', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })
EOF
