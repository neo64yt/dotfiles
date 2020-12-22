:set number
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
nmap <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
let g:NERDTreeDirArrowExpandable = '󰬫'
let g:NERDTreeDirArrowCollapsible = '󰬧'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
