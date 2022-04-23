"  __ _  ___ ____  ___    (_) __ _____  ___  ___ _/ /__ _
" /  ' \/ _ `/ _ \/ _ \  / / / // / _ \/ _ \/ _ `/ / _ `/
"/_/_/_/\_,_/_//_/\___/_/ /  \_,_/ .__/ .__/\_,_/_/\_,_/ 
"                    |___/      /_/  /_/                 
" website: https://manojuppala.com
" github: https://github.com/manojuppala
" A customized init.vim for neovim (https://neovim.io/)

syntax on

"general settings
set mouse=v
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set clipboard+=unnamedplus
set hlsearch
set hidden
set exrc
set scrolloff=8
set showtabline=2

set guifont=Fira\ Code:h12
set encoding=UTF-8

:set completeopt-=preview " For No Previews

set colorcolumn=90
highlight ColorColumn ctermbg=0 guibg=lightgrey

"plugins
call plug#begin()
Plug 'mbbill/undotree'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/vim-scripts/dbext.vim' " SQL Completion
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight' " C++ Syntax
Plug 'airblade/vim-gitgutter' "shows git changes in gutter
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'xuhdev/vim-latex-live-preview' " A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'https://github.com/joshdick/onedark.vim'
"Plug 'https://github.com/preservim/nerdtree' " NerdTree
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'https://tpope/vim-fugitive' "allows git commands in vim session
"Plug 'tsony-tsonev/nerdtree-git-plugin'
call plug#end()

let g:kite_completions=0

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-clangd',
  \ 'coc-python',
  \ ]

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"START_KEYS
"START_CUSTOM_KEYS
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

map <F7> :call Run() <cr>
function Run()
  exec "! node %"
endfunction

" key mappings
map <F5> <Esc>:silent !google-chrome %<cr>
nnoremap <F3> :set hlsearch!<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" Open markdown files with Chrome.
autocmd BufEnter *.md exe 'noremap <F5>:!start !google-chrome %:p<CR>'
nmap <F8> :TagbarToggle<CR>

let g:airline#extensions#tabline#buffer_idx_mode = 1
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
  nmap <leader>0 <Plug>AirlineSelectTab0
  nmap <leader>- <Plug>AirlineSelectPrevTab
  nmap <leader>+ <Plug>AirlineSelectNextTab
"END_CUSTOM_KEYS
"END_KEYS

"boiler plate code
autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/skeleton.cpp
autocmd BufNewFile *.html 0r ~/.config/nvim/templates/skeleton.html

"vim colorscheme
colorscheme onedark

"transparent background
hi Normal guibg=NONE ctermbg=NONE

"toggle between relative and absolute line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
