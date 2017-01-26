set nocompatible

set number
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set autoread

set hidden

syntax on
filetype off

set noswapfile
set nobackup
set nowb


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmarik/vundle"
Bundle "sheerun/vim-polyglot"
Bundle "kchmck/vim-coffee-script"
Bundle "mtscout6/vim-cjsx"

" Ruby, Rails, Rake...
Bundle "tpope/vim-rails.git"
Bundle "tpope/vim-rake.git"
Bundle "tpope/vim-rvm.git"
Bundle "vim-scripts/Specky.git"
Bundle "ck3g/vim-change-hash-syntax"

" Html, Xml, Css, Markdown...
Bundle "aaronjensen/vim-sass-status.git"
Bundle "digitaltoad/vim-jade.git"
Bundle "itspriddle/vim-jquery.git"
Bundle "jtratner/vim-flavored-markdown.git"
Bundle "nelstrom/vim-markdown-preview"
Bundle "skwp/vim-html-escape"
Bundle "slim-template/vim-slim.git"
Bundle "Slava/vim-spacebars"



" Git related...
Bundle "gregsexton/gitv"
Bundle "mattn/gist-vim"
Bundle "skwp/vim-git-grep-rails-partial"
Bundle "tjennings/git-grep-vim"
Bundle "tpope/vim-fugitive"

" General text editing improvements...
Bundle "AndrewRadev/splitjoin.vim"
Bundle "Raimondi/delimitMate"
Bundle "Shougo/neocomplcache.git"
Bundle "briandoll/change-inside-surroundings.vim.git"
Bundle "garbas/vim-snipmate.git"
Bundle "godlygeek/tabular"
Bundle "honza/vim-snippets"
Bundle "nelstrom/vim-visual-star-search"
Bundle "skwp/vim-easymotion"
Bundle "tomtom/tcomment_vim.git"
Bundle "tpope/vim-bundler"
Bundle "vim-scripts/IndexedSearch"
Bundle "vim-scripts/camelcasemotion.git"
Bundle "vim-scripts/matchit.zip.git"
Bundle "terryma/vim-multiple-cursors"

" Smooth Scrolling
Bundle "terryma/vim-smooth-scroll"

" General vim improvements
Bundle "MarcWeber/vim-addon-mw-utils.git"
Bundle "bogado/file-line.git"
Bundle "ctrlpvim/ctrlp.vim"

Bundle "majutsushi/tagbar.git"
Bundle "mattn/webapi-vim.git"
Bundle "rking/ag.vim"
Bundle "scrooloose/syntastic.git"
Bundle "sjl/gundo.vim"
"Bundle "skwp/YankRing.vim"
Bundle "skwp/greplace.vim"
"Bundle "rson/vim-conque"
"Bundle "skwp/vim-conque"
Bundle "oplatek/Conque-Shell"
Bundle "tomtom/tlib_vim.git"
Bundle "tpope/vim-abolish"
Bundle "tpope/vim-endwise.git"
Bundle "tpope/vim-ragtag"
Bundle "tpope/vim-repeat.git"
Bundle "tpope/vim-surround.git"
Bundle "tpope/vim-unimpaired"
Bundle "vim-scripts/AnsiEsc.vim.git"
Bundle "vim-scripts/AutoTag.git"
Bundle "vim-scripts/lastpos.vim"
Bundle "vim-scripts/sudo.vim"
"Bundle "xsunsmile/showmarks.git"

" Text objects
Bundle "austintaylor/vim-indentobject"
Bundle "bootleq/vim-textobj-rubysymbol"
Bundle "coderifous/textobj-word-column.vim"
Bundle "kana/vim-textobj-datetime"
Bundle "kana/vim-textobj-entire"
Bundle "kana/vim-textobj-function"
Bundle "kana/vim-textobj-user"
Bundle "lucapette/vim-textobj-underscore"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "thinca/vim-textobj-function-javascript"
Bundle "vim-scripts/argtextobj.vim"

" Cosmetics, color scheme, Powerline...
Bundle "vim-scripts/TagHighlight.git"
Bundle "chrisbra/color_highlight.git"
Bundle "altercation/vim-colors-solarized"
Bundle "bling/vim-airline"
let g:airline#extensions#tabline#enabled = 1

" Evernote and other app plugins.
Bundle "kakkyz81/evervim"

set wrap
set linebreak

set list listchars=tab:\ \ ,trail:·

filetype on
filetype plugin on
filetype indent on

set foldmethod=indent
set foldnestmax=3
set nofoldenable
" set foldenable

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set incsearch

set mouse=a

set guioptions-=r
set guioptions-=L
set background=dark
let iterm_profile=$ITERM_PROFILE
if iterm_profile=='Solarized Light'
  set background=light
endif
colorscheme solarized

filetype plugin indent on
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" Set the right syntax checkers for React.
let g:syntastic_javascript_checkers = ['eslint']
" Ignore errors caused by 'template' tags.
let g:syntastic_html_tidy_ignore_errors=["template","unexpected <body>"]
" Bold descriptions and it statements in mocha.js tests.
highlight MochaTestDescribeIt cterm=bold
match MochaTestDescribeIt /\(^\|\s\+\)\(it\|describe\)("\zs.*\ze"/

