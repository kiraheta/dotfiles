set number expandtab tabstop=2 shiftwidth=2
syntax on
    

call plug#begin()

    Plug 'flazz/vim-colorschemes'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'ervandew/supertab'

call plug#end()

colorscheme CandyPaper 

" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" key shortcuts
map <C-n> :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" For Syntastic - https://vimawesome.com/plugin/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
