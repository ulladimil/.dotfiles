if !exists('g:loaded_telescope') | finish | endif

nnoremap ;f <cmd>Telescope find_files<cr>
nnoremap ;b <cmd>Telescope buffers<cr>
nnoremap ;r <cmd>Telescope resume<cr>
nnoremap ;d <cmd>Telescope lsp_references<cr>

lua << EOF
vim.keymap.set('n', ';g', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })

require('telescope').setup{
    defaults = {
        layout_strategy = 'vertical',
        sorting_strategy = 'ascending',
        layout_config = {
            height = 0.95,
            vertical = {
                preview_cutoff = 0
            }
        }
    }
}
EOF
