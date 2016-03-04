set expandtab
set tabstop=4
set shiftwidth=4
"colorscheme solarized

nnoremap k :bn<CR>
nnoremap j :bp<CR>

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'bling/vim-airline'
Plugin 'summerfruit256.vim'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chase/vim-ansible-yaml'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
call vundle#end()
filetype plugin indent on

nnoremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async<cr>
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Tagbar plugin
nmap <F8> :TagbarToggle<CR>

syntax enable
set background=dark
colorscheme solarized

call togglebg#map("<F5>")

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:jedi#auto_initialization = 0
