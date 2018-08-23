let g:python_host_prog = '/Users/toshegg/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/toshegg/.pyenv/versions/neovim3/bin/python'

set langmenu=en_US.UTF-8
set encoding=UTF-8
let $LANG = 'en_US'
syntax enable
set autoindent
set smartindent
set number relativenumber
set so=999
set cursorline
set lazyredraw
set ttyfast
set tabstop=2 shiftwidth=2 expandtab
set incsearch
filetype plugin indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set noic

checktime 2
set autoread
au CursorHold * checktime
au FocusGained * checktime

set spelllang=en
set spellfile=~/.config/nvim/spell/en.utf-8.add

set spell

" Require plugins
"
call plug#begin('~/.local/share/nvim/plugged')
" NERD Tree
Plug 'scrooloose/nerdtree'

" colorscheme
Plug 'junegunn/seoul256.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'arcticicestudio/nord-vim'

" indent guides
Plug 'nathanaelkane/vim-indent-guides'

" Vim pug
Plug 'digitaltoad/vim-pug'

" Vim coffeescript
Plug 'kchmck/vim-coffee-script'

" Vim auto pairs
Plug 'jiangmiao/auto-pairs'

" Easymotion
Plug 'easymotion/vim-easymotion'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'

" Fugitive
Plug 'tpope/vim-fugitive'

" Ack (search)
Plug 'mileszs/ack.vim'

" Supertab (autocomplete)
Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Save session
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

" Syntax check
Plug 'neomake/neomake'
Plug 'jaawerth/nrun.vim'

" Git diff
Plug 'airblade/vim-gitgutter'

" Smart comment
Plug 'scrooloose/nerdcommenter'

" CSS3
"Plug 'hail2u/vim-css3-syntax'

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

" Swift support
Plug 'keith/swift.vim'


" Plug 'sheerun/vim-polyglot'
Plug 'posva/vim-vue', { 'branch': 'performance-enhancement' }

Plug 'isRuslan/vim-es6'
"
Plug 'chrisbra/NrrwRgn'

Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'

Plug 'ryanoasis/vim-devicons'

Plug 'AndrewRadev/inline_edit.vim'

"Plug 'roman/golden-ratio'

Plug 'takac/vim-hardtime'

Plug 'AndrewRadev/splitjoin.vim'

Plug 'ternjs/tern_for_vim'

Plug 'schickling/vim-bufonly'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'ap/vim-css-color'

Plug 'brooth/far.vim'
call plug#end()

" colorscheme seoul256
colorscheme hybrid_material
" colorscheme nord
set background=dark

" Airline customization

let g:airline_theme="deus"
"let g:airline_hybrid_bg='dark'
let g:airline_powerline_fonts = 1

let g:airline#extensions#neomake#enabled = 1
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

let g:bufferline_echo = 0

" Indent guides settings
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=234
hi IndentGuidesEven ctermbg=237
let g:indent_guides_exclude_filetypes = ['nerdtree']

nnoremap <leader>r :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<cr>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" close vim if the only window left open is a NERDTree
"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Tabs manipulation
"
let g:NERDTreeMapJumpNextSibling = ''
let g:NERDTreeMapJumpPrevSibling = ''
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-y>     :tabclose<CR>
nnoremap <C-j> gT
nnoremap <C-k> gt

let g:user_emmet_leader_key='<C-s>'

nnoremap <C-h> :bprevious<CR>
nnoremap <C-l> :bnext<CR>

" Save session
let g:session_directory='./'
let g:session_default_name='Session'
let g:session_autosave='yes'
let g:session_autosave_periodic=1
let g:session_autoload='no'

" Easymotion settings

map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_smartcase = 1

" Map Ctrl+C and Ctrl+x
vmap <C-c> "+y
vmap <C-x> "+d

let g:neomake_javascript_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
let g:neomake_vue_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
let g:neomake_html_eslint_maker = {
        \ 'args': ['--format=compact'],
        \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
        \   '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
        \ 'cwd': '%:p:h',
        \ }
let g:neomake_html_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
autocmd BufEnter,BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_vue_enabled_makers = ['eslint']
let g:neomake_html_enabled_makers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Set updatetime
set updatetime=250

" CtrlP settings
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

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
let g:prettier#config#trailing_comma = 'none'

set iskeyword+=\-

" Use ag with ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <Leader>a :Ack!<Space>

" Flashy y
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
hi Flashy ctermbg=red

" YouCompleteMe opts
"set completeopt-=preview

nnoremap <c-i> :InlineEdit<CR>
let g:inline_edit_proxy_type = 'tempfile'
let g:inline_edit_autowrite = 1
let g:inline_edit_modify_statusline = 0

autocmd WinEnter * resize

nnoremap <leader>it vithA<CR><CR><ESC>kcc

"autocmd BufEnter,BufWritePost * HardTimeOn
let g:hardtime_allow_different_key = 1

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

vnoremap <leader>ch dO<!--<CR>--><ESC>P

let g:AutoPairsMultilineClose = 0
let g:AutoPairsFlyMode = 0

" Deoplete opts
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#filetypes = [
                \ 'html',
                \ 'vue'
                \ ]
let g:SuperTabDefaultCompletionType = "<c-n>"

" Polyglot settings
let g:polyglot_disabled = ['vue']

" GReplace settings
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'
