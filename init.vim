noremap j h
noremap k j
noremap l k
noremap ; l
noremap h ;

noremap <C-w>j :wincmd h<CR>
noremap <C-w>k :wincmd j<CR>
noremap <C-w>l :wincmd k<CR>
noremap <C-w>; :wincmd l<CR>

syntax enable
set autoindent
set number
set tabstop=2 shiftwidth=2 expandtab

" Require plugins
"
call plug#begin('~/.vim/plugged')
" NERD Tree
Plug 'scrooloose/nerdtree'

" colorscheme
Plug 'junegunn/seoul256.vim'

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

" Save session
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

" Syntax check
Plug 'vim-syntastic/syntastic'

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
call plug#end()

colo seoul256

let g:airline_theme="jellybeans"

" Indent guides settings
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=238 guibg=#575757
hi IndentGuidesEven ctermbg=240 guibg=#575757
filetype plugin indent on
filetype plugin on

" Toggle NERD Tree when open a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <leader>r :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Tabs manipulation
"
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-y>     :tabclose<CR>
nnoremap <C-i> gT
nnoremap <C-o> gt 

function TabLeft()
   let tab_number = tabpagenr() - 1
   if tab_number == 0
      execute "tabm" tabpagenr('$') - 1
   else
      execute "tabm" tab_number - 1
   endif
endfunction

function TabRight()
   let tab_number = tabpagenr() - 1
   let last_tab_number = tabpagenr('$') - 1
   if tab_number == last_tab_number
      execute "tabm" 0
   else
      execute "tabm" tab_number + 1
   endif
endfunction

map <silent><A-S-o> :execute TabRight()<CR>
map <silent><A-S-i> :execute TabLeft()<CR>

let g:user_emmet_leader_key='<C-W>'

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

" Map Ctrl+C and Ctrl+x
vmap <C-c> "+y
vmap <C-x> "+d

" Syntastic settings
"
let g:syntastic_pug_checkers = ['pug_lint']
let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_html_checkers=['']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Set updatetime
set updatetime=250

" CtrlP settings
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

" UltiSnips configuration

let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDir = '/Users/toshegg/.vim/UltiSnips'
let g:UltiSnipsSnippetDirectories = ['UltiSnips']
