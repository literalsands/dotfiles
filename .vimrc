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
Bundle "pangloss/vim-javascript"
Bundle "mxw/vim-jsx"

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
Bundle "chrisbra/Colorizer"
Bundle "altercation/vim-colors-solarized"
Bundle "mhartington/oceanic-next"
Bundle "vim-airline/vim-airline-themes"
Bundle "vim-airline/vim-airline"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

Bundle "sbdchd/neoformat"

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

filetype plugin indent on
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" Set the right syntax checkers for React.
let g:syntastic_javascript_checkers = ['eslint']
" Ignore errors caused by 'template' tags.
let g:syntastic_html_tidy_ignore_errors=["template","unexpected <body>"]
let g:jsx_ext_required = 1 " Allow JSX in normal JS files

colorscheme solarized

" Bold descriptions and it statements in mocha.js tests.
highlight MatchParen ctermfg=10 ctermbg=8 cterm=bold
highlight Search ctermbg=8 ctermfg=10
highlight MochaTestDescribeIt cterm=bold
highlight MochaTestSkip ctermbg=8 cterm=bold
augroup MochaHighlighting
  autocmd!
  autocmd VimEnter,WinEnter *spec.js syntax match MochaTestDescribeIt /\(^\|\s\+\)\(it\|describe\)("\zs.*\ze"/
  autocmd VimEnter,WinEnter *spec.js syntax match MochaTestSkip /\(^\|\s\+\)\(it\|describe\)\.skip("\zs.*\ze"/
augroup END

" Set solarized to working.
let g:solarized_termcolors=16 " color depth
let g:solarized_termtrans=0 " 1|0 background transparent
let g:solarized_bold=1 " 1|0 show bold fonts
let g:solarized_italic=1 " 1|0 show italic fonts
let g:solarized_underline=0 " 1|0 show underlines
let g:solarized_contrast="normal" " normal|high|low contrast
let g:solarized_visibility="normal" " normal|high|low effect on whitespace characters

hi jsThis cterm=italic ctermfg=1
hi jsClassDefinition cterm=italic,bold ctermfg=4
hi jsClassFuncName cterm=italic,bold ctermfg=4
hi jsHtmlElemFuncs cterm=italic,bold ctermfg=4
hi jsFuncName cterm=italic,bold ctermfg=4

hi htmlArg gui=italic cterm=italic
hi Comment gui=italic cterm=italic
hi Type    gui=italic cterm=italic

