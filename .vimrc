"Default settings
set nocompatible
set relativenumber number
set clipboard=unnamed
set hidden
set nocp
set termguicolors
set smartindent
set autoindent expandtab tabstop=4 shiftwidth=4
set background=dark
filetype on
filetype plugin on
filetype indent on
set encoding=utf8

"Mappings
inoremap jj <esc>

"Toggle NERDTree with Ctrl-n
nnoremap <C-n> :NERDTreeToggle<CR>

" Toggle terminal with Ctrl-`
function! ToggleTerminal()
  below term ++rows=10 
endfunction

nnoremap <C-t> :call ToggleTerminal()<CR>  
	

"Theme
colorscheme catppuccin_macchiato
let g:airline_powerline_fonts = 1

"Escape sequence fix
set t_RV=
set term=builtin_ansi
