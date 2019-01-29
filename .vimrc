set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'    
Plugin 'tomtom/tcomment_vim'
Plugin 'Townk/vim-autoclose'


" git plugins 
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'   
Plugin 'airblade/vim-gitgutter'

" php plugins
Plugin 'shawncplus/phpcomplete.vim'  " can't use it till now
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-syntastic/syntastic'

" search plugins 
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'Yggdroot/indentLine'


" go plugins
Plugin 'fatih/vim-go'


" themes and colors
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" end of plugins



" settings 
set number
set cursorline
set relativenumber
set autoindent
set cindent 
set smartindent
set nocompatible
set hidden
set showtabline=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set list
" makes cursor on the begining of tab characters. makes it behaves like other editors
set listchars=tab:\ \
" view tabs with pipe character and three spaces to proper view indent guides
" set listchars=tab:\|\
" set listchars=tab:\|.
set listchars=tab:\|-
" set listchars=tab:\|_
" set listchars=tab:\>.
" set listchars=tab:\>-
" set listchars=tab:\>\
" set listchars=tab:.\
" set listchars+=trail:.
set listchars+=extends:>


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

let g:UltiSnipsExpandTrigger="<leader>c"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"



let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']


" end of settings

" maps 
inoremap esc <esc>
nmap <leader>fs :NERDTreeToggle<cr>
nmap <leader>tb :Tagbar<cr>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


" comment block
" tcomment_vim plugin
nmap ggcc <c-_>b 




" end of maps


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

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

