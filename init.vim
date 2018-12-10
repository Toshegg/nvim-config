" Python 2 and 3 paths
"let g:python_host_prog = '/Users/toshegg/.pyenv/versions/neovim2/bin/python'
"let g:python3_host_prog = '/Users/toshegg/.pyenv/versions/neovim3/bin/python'

" Set spell check
set langmenu=en_US.UTF-8
set encoding=UTF-8
let $LANG = 'en_US'
set spelllang=en
set spellfile=~/.config/nvim/spell/en.utf-8.add
" set spell

" Basic settings
syntax enable
set autoindent
set smartindent
set tabstop=2 shiftwidth=2 expandtab
set number
set so=999
set lazyredraw
set incsearch
set shiftround
filetype plugin indent on
filetype plugin on
filetype indent on
set omnifunc=syntaxcomplete#Complete
set noic
checktime 2
set autoread
au CursorHold * silent! checktime
au FocusGained * silent! checktime
set termguicolors
set ttyfast
let mapleader=" "
set undofile

" Set correct indents for inline script and style tags
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Require plugins
"
call plug#begin('~/.local/share/nvim/plugged')
" NERD Tree
Plug 'scrooloose/nerdtree'

" colorscheme
Plug 'junegunn/seoul256.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'arcticicestudio/nord-vim'

" Easymotion
Plug 'easymotion/vim-easymotion'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Fugitive
Plug 'tpope/vim-fugitive'

" Supertab (autocomplete)
Plug 'ervandew/supertab'

" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Syntax check
"Plug 'neomake/neomake'
"Plug 'jaawerth/nrun.vim'
Plug 'w0rp/ale'

" Git diff
Plug 'airblade/vim-gitgutter'

" Smart comment
Plug 'scrooloose/nerdcommenter'

" CSS3
Plug 'hail2u/vim-css3-syntax'
Plug 'JulesWang/css.vim'

" Auto close tags
Plug 'alvan/vim-closetag'

" Emmet vim
Plug 'mattn/emmet-vim'

" Snippets
Plug 'SirVer/ultisnips'

" Surround
Plug 'tpope/vim-surround'

" Support . for surround
Plug 'tpope/vim-repeat'

" All syntax
Plug 'sheerun/vim-polyglot'

" VueJS but with improved performance
Plug 'posva/vim-vue', { 'branch': 'performance-enhancement' }

Plug 'isRuslan/vim-es6'

" Icons for NERDTree, airline etc.
Plug 'ryanoasis/vim-devicons'

" Edit css and js in a separated buffer
Plug 'AndrewRadev/inline_edit.vim'

Plug 'AndrewRadev/splitjoin.vim'

Plug 'ternjs/tern_for_vim'

Plug 'schickling/vim-bufonly'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Highlight colors in css
Plug 'ap/vim-css-color'

" Search and replace in multiple files
Plug 'brooth/far.vim'

Plug 'Yggdroot/indentLine'

Plug 'embear/vim-localvimrc'

Plug 'kamykn/spelunker.vim'

Plug 'osyo-manga/vim-over'

Plug 'romainl/vim-cool'

Plug 'benmills/vimux'
call plug#end()

" Set coloscheme
"colorscheme hybrid_material
colorscheme nord
let g:nord_comment_brightness = 10
let g:gruvbox_guisp_fallback = "bg"
"colorscheme gruvbox
set background=dark
hi Special guifg=#5E81AC
hi Identifier guifg=#81A1C1

" Airline customization
"let g:airline_theme="gruvbox"
let g:airline_theme="nord"
let g:airline_powerline_fonts = 1
"let g:airline#extensions#neomake#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
let g:airline#extensions#tabline#tab_nr_type = 3
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

" NERDTree settings
nnoremap <leader>r :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<cr>
let NERDTreeDirArrows = 1
let g:NERDTreeMapJumpNextSibling = ''
let g:NERDTreeMapJumpPrevSibling = ''
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Tabs
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-y>     :tabclose<CR>
nnoremap <C-j> gT
nnoremap <C-k> gt

" Emmet settings
let g:user_emmet_leader_key='<C-s>'
let g:user_emmet_settings = {
\  'javascript.jsx': {
\      'extends' : 'jsx',
\  }
\}

" Easymotion settings
map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_smartcase = 1

" CTRL+c - save to clipboard, CTRL+x - cut
vmap <C-c> "+y
vmap <C-x> "+d

let g:ale_linters = {'typescript': ['tslint', 'tsserver']}
nnoremap <Leader>ln :ALENext<CR>
nnoremap <Leader>lp :ALEPrevious<CR>
nnoremap <Leader>lf :ALEFix<CR>

" Neomake settings
" let g:neomake_javascript_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
" let g:neomake_vue_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
" let g:neomake_html_eslint_maker = {
"         \ 'args': ['--format=compact'],
"         \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"         \   '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
"         \ 'cwd': '%:p:h',
"         \ }
" let g:neomake_html_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
"
" let g:neomake_typescript_tslint_maker = {
"       \ 'args': ['%:p'],
"       \ 'errorformat': '%EERROR: %f[%l\, %c]: %m,%E%f[%l\, %c]: %m',
"       \ 'cwd': '%:p:h',
"       \ }
"
" autocmd BufEnter,BufWritePost * Neomake
" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_vue_enabled_makers = ['eslint']
" let g:neomake_html_enabled_makers = ['eslint']
" let g:neomake_typescript_enabled_makers = ['tslint']

" Set updatetime
set updatetime=250

" FZF setup
nnoremap <C-p> :GFiles --others --exclude-standard --cached<CR>
nnoremap <C-f> :GFiles?<CR>
nnoremap <C-a> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-h> :History<CR>
nnoremap <C-l> :Line<CR>
nnoremap <Leader>a :Ag<CR>
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

command! -bang -nargs=* GFiles
  \ call fzf#vim#gitfiles(<q-args>, <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" UltiSnips configuration
let g:UltiSnipsExpandTrigger = "<c-e>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsSnippetsDir = $HOME."/.config/UltiSnips"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.config/UltiSnips']
let g:UltiSnipsEnableSnipMate = 0
let g:UltiSnipsEditSplit="vertical"

" Remove trailing spaces automatically
fun! TrimWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()

" Support of embedded js and css syntax
autocmd BufEnter * :syntax sync fromstart

" Prettier conf
let g:prettier#autoformat = 0
"let g:prettier#config#trailing_comma = 'none'

" Words with dashes as a single word
set iskeyword+=\-

" InlineEdit settings
nnoremap <c-i> :InlineEdit<CR>
let g:inline_edit_proxy_type = 'tempfile'
let g:inline_edit_autowrite = 1
let g:inline_edit_modify_statusline = 0

" ???
autocmd WinEnter * resize

" Open byte files in binary mode
augroup Binary
  au!
  au BufReadPre  *.bin,*.ico,*.png,*.jpg let &bin=1
  au BufReadPre  *.bin,*.ico,*.png,*.jpg set nospell
  au BufReadPost *.bin,*.ico,*.png,*.jpg if &bin | %!xxd
  au BufReadPost *.bin,*.ico,*.png,*.jpg set ft=xxd | endif
  au BufWritePre *.bin,*.ico,*.png,*.jpg if &bin | %!xxd -r
  au BufWritePre *.bin,*.ico,*.png,*.jpg endif
  au BufWritePost *.bin,*.ico,*.png,*.jpg if &bin | %!xxd
  au BufWritePost *.bin,*.ico,*.png,*.jpg set nomod | endif
augroup END

inoremap <C-j> <CR><CR><C-o>k<Tab>

" Deoplete opts
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#filetypes = [
                \ 'html',
                \ 'vue'
                \ ]
let g:SuperTabDefaultCompletionType = "<c-n>"

" Polyglot settings
let g:polyglot_disabled = ['vue', 'typescript']

" Open vimrc in split
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>en :vsplit ~/.config/nvim/notes<CR>

" Indents
let g:indentLine_char = '⎸'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*', '.*\.txt']

let g:vim_markdown_conceal = 0

" Local vimrc whitelist
let g:localvimrc_whitelist='/Users/toshegg/code/analyste/b-sharp-ui/.*'
let g:localvimrc_sandbox = 0

" Map c-i to import for typescript
au FileType typescript nnoremap <leader>i :TSImport<CR>
au FileType typescript nnoremap <leader>o :TSDef<CR>

let g:spelunker_spell_bad_group = 'SpellBad'
nnoremap <leader>s :OverCommandLine %s/<cr>

" Nvim-typescript settings
let g:nvim_typescript#diagnostics_enable = 0

