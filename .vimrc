set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'https://github.com/vim-scripts/vcscommand.vim.git'
Plugin 'https://github.com/vim-scripts/taglist.vim.git'
Plugin 'https://github.com/vim-scripts/OmniCppComplete.git'
Plugin 'https://github.com/vim-scripts/vim-lastplace.git'
Plugin 'https://github.com/vim-scripts/autoload_cscope.vim.git'
Plugin 'https://github.com/vim-scripts/A.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Auto complete Adjust
highlight   Pmenu         ctermfg=white ctermbg=blue
highlight   PmenuSel      ctermfg=Black ctermbg=Gray
highlight   PmenuSbar     ctermfg=Red ctermbg=Black
highlight   PmenuThumb    ctermfg=Yellow ctermbg=DarkBlue
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Taglist adjust
:highlight MyTagListTagName guibg=blue ctermbg=blue
let Tlist_Ctags_Cmd='ctags'
let Tlist_Auto_Open = 1
let Tlist_Show_One_File=1
let Tlist_WinWidt =28
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Left_Window = 1

" VCSCommand adjust
highlight   DiffAdd       ctermfg=Black ctermbg=Green
highlight   DiffDeleted   ctermfg=Black ctermbg=Red
highlight   DiffChange    ctermfg=Black ctermbg=Grey
highlight   DiffText      ctermfg=Black ctermbg=Yellow

" OmniCppComplete adjust
set omnifunc=syntaxcomplete#Complete

" Bind keys
noremap <C-z> u
inoremap <C-z> <C-O>u
noremap <F2> :TlistToggle<CR>
inoremap <F2> <C-O>:TlistToggle<CR>
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>

" Eviornment adjust
:set nu
set foldmethod=syntax
set foldnestmax=20
set nofoldenable
set foldlevel=10
highlight   Folded      ctermfg=grey ctermbg=blue
highlight   Search      ctermfg=black ctermbg=yellow
highlight   Visual      ctermfg=white ctermbg=blue

:set hlsearch
:set incsearch
set paste
set expandtab
set tabstop=4
set shiftwidth=4

set tags=tags;
