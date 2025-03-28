nnoremap <Right> <C-W><C-L>
nnoremap <Left> <C-W><C-H>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F12> <Esc>:syntax sync fromstart<CR>

nnoremap <Up> <C-U><CR>
nnoremap <Down> <C-D><CR>

map q: <Nop>
nnoremap Q <nop>

map <Tab> :tabn <CR>
map <S-Tab> :tabp <CR>
map ;t :tabe <CR>
map ;e :tabe +term <CR>
map ;s :vs <CR>
map = :tabm +1 <CR>
map - :tabm -1 <CR>
map ;c :copen <CR>
map ;; :NvimTreeToggle <CR>
tnoremap <C-[> <C-\><c-n>

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

let mapleader = ","

cnoreabbrev E Explore
