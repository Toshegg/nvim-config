set langmenu=en_US.UTF-8
set encoding=utf8
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
set noic

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
Plug 'Valloric/YouCompleteMe'

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
Plug 'hail2u/vim-css3-syntax'

" Auto close tags
Plug 'alvan/vim-closetag'

" Emmet vim
Plug 'mattn/emmet-vim'

" Snippets
Plug 'SirVer/ultisnips'

" Javascript
"Plug 'pangloss/vim-javascript'

" Surround
Plug 'tpope/vim-surround'

" Support . for surround
Plug 'tpope/vim-repeat'

" Swift support
Plug 'keith/swift.vim'

" Plug 'bling/vim-bufferline'

Plug 'sheerun/vim-polyglot'

Plug 'isRuslan/vim-es6'
"Plug 'othree/yajs.vim'
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
call plug#end()

" colorscheme seoul256
colorscheme hybrid_material
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

" Toggle NERD Tree when open a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <leader>r :NERDTreeToggle<CR>
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

" Easymotion settings

map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_smartcase = 1

" Map Ctrl+C and Ctrl+x
vmap <C-c> "+y
vmap <C-x> "+d

let g:neomake_javascript_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
autocmd BufEnter,BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

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
autocmd BufWritePre * %s/\s\+$//e

" Support of embedded js and css syntax
autocmd BufRead,BufNewFile *.html setlocal filetype=html.javascript.css
autocmd BufEnter * :syntax sync fromstart

" Folding
augroup javascript.html.css
  au!
  au FileType html.javascript.css setlocal foldmethod=marker
  au FileType html.javascript.css setlocal foldmarker={,}
  au FileType html.javascript.css setlocal foldlevel=99
  au FileType html.javascript.css setlocal foldminlines=3
augroup END
nmap <leader>f :set foldlevel=2<CR>
nmap <leader>u :set foldlevel=99<CR>

"augroup javascript
  "au!
  "au FileType javascript setlocal foldmethod=syntax
  "au FileType javascript setlocal foldminlines=3
"augroup END

set iskeyword+=\-

" Use ag with ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <Leader>a :Ack!<Space>

" Flashy y
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
hi Flashy ctermbg=red

" Autosave and autoread
"set autoread
"au FocusGained,BufEnter * :silent! checktime
"au FocusLost,WinLeave * :silent! w

" YouCompleteMe opts
set completeopt-=preview

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
