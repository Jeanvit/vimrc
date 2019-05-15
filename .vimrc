"Jean Vitor de Paulo .VIMRC

" needed to run vundle (but i want this anyways)
set nocompatible

" vundle needs filtype plugins off
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()

" list of plugins {{{2
" let Vundle manage Vundle (this is required)
"old: Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'

" to install a plugin add it here and run :PluginInstall.
" to update the plugins run :PluginInstall! or :PluginUpdate
" to delete a plugin remove it here and run :PluginClean
" 

Plugin 'dracula/vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nvie/vim-flake8'
Plugin 'ervandew/supertab'

call vundle#end()

let python_highlight_all=1
filetype plugin indent on
syntax on

colorscheme monokai

"Run python3 if f5 is pressed
map <F5>  :w!<CR>:!python3 % -u<CR>
map <F6>  :w!<CR>:!python3 %<CR>

"Mouse scroll for comfortable motion
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(30)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-30))<CR>

:set listchars=tab:\|\ 
:set list
"Identation
set tabstop=4
set autoindent
set laststatus=2
set number

"Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Nerdtree shortcut Ctrl N
map <C-n> :NERDTreeToggle<CR>

"Close vim if if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
map <Enter> o<ESC>
map <S-Enter> O<ESC>


