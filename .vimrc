set bs=2
set ts=2
set sw=4
set tw=79
	
" case insensitive searching
set ic 

" folding 
set foldmethod=indent
set foldlevel=1

" highlighting 
set hlsearch
" CTRL-L to turn off highlighting after search 
nnoremap <C-L> :nohlsearch<CR><C-L>

" navigation
set wildmode=full


colorscheme zazen
" copying and pasting, yank to clipboard
if has("clipboard")

  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" plugins
call plug#begin('~/.vim/plugged')
  " utilities
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'airblade/vim-gitgutter'
  Plug 'https://github.com/jeffkreeftmeijer/vim-numbertoggle'
  
  " javascript 
  Plug 'pangloss/vim-javascript'
  Plug 'https://github.com/heavenshell/vim-jsdoc'
  Plug 'Shutnik/jshint2.vim'
call plug#end()

highlight Folded ctermbg=Grey ctermfg=Black
