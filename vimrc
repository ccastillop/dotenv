" Use Utf-8 enconding
set encoding=utf-8

" Enable line numbers
set number

" Enable syntax highlighting
syntax enable
filetype plugin indent on

" Set the tab width to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Enable auto-indent
set autoindent
set smartindent

" Enable line wrapping
set wrap

" Enable line numbers
set number

" Enable mouse support (optional)
set mouse=a

" Enable searching as you type
set incsearch

" Highlight search results as you type
set hlsearch

" Enable case-insensitive search
set ignorecase
set smartcase

" Enable spell checking (optional)
set spell

" Use a dark color scheme (you can choose your favorite)
""set background=dark
""colorscheme solarized

" Enable line folding (optional)
set foldmethod=indent
set foldlevel=99

" Enable clipboard support for macOS
set clipboard=unnamed

" Enable Ruby syntax highlighting and indentation
au BufNewFile,BufRead *.rb set ft=ruby

" Define keyboard shortcuts for saving and quitting
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>

" Enable Vundle and specify your plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-rails' " Ruby on Rails enhancements
Plugin 'vim-ruby/vim-ruby' " Improved Ruby support

" Add other plugins you prefer here
Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-endwise'

" Tab completion
Plugin 'ervandew/supertab'

" Bundle
Plugin 'tpope/vim-bundler'

" Commentary
Plugin 'tpope/vim-commentary' 

" Slim
Plugin 'slim-template/vim-slim.git'

Plugin 'thoughtbot/vim-rspec'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
let g:snipMate = { 'snippet_version' : 0 }

Plugin 'preservim/nerdtree'

Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" black theme
Plugin 'morhetz/gruvbox'

" search files quickly
Plugin 'kien/ctrlp.vim'

Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'

Plugin 'lifepillar/vim-solarized8'

Plugin 'tomasiser/vim-code-dark'

Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

Plugin 'honza/vim-snippets'

Plugin 'dense-analysis/ale'

Plugin 'mg979/vim-visual-multi', {'branch': 'master'}

call vundle#end()

"let g:codedark_modern=1
" Activates italicized comments (make sure your terminal supports italics)
"let g:codedark_italics=1
" Make the background transparent
let g:codedark_transparent=1
colorscheme codedark

let g:ale_linters = { 'ruby': ['rubocop'], }
let g:ale_fixers = {'ruby': ['rubocop']}
let g:ale_fix_on_save = 1


" if executable('solargraph')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'solargraph',
"         \ 'cmd': {server_info->['solargraph', 'stdio']},
"         \ 'whitelist': ['ruby'],
"         \ })
" endif


