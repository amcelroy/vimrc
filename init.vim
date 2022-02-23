set mouse=a
inoremap jk <Esc>
tnoremap jk <C-\><C-n>

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set guicursor=a:blinkon25   " Make the cursor blink
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
setlocal spell spelllang=en_us

if empty(glob('~/.config/nvim/autoload/plug.vim'))
        silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'othree/html5.vim'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

call plug#end()

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

map df :NERDTreeToggle<CR>
map <C-p> :MarkdownPreview<CR>
map <C-d> :DogeGenerate<CR>
