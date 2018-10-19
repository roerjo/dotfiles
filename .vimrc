"----------------Must Haves----------------"
"Use vim not vi
set nocompatible

"tab to 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

"turn on line numbers
set number

"syntax highlighting
syntax enable

"split windows a normal way
set splitbelow
set splitright

"copy/paste from clipboard
set clipboard=unnamed

"Set clipboard pasting to not format
set pastetoggle=<F2>

"Change leader key to ,
let mapleader=','

"Enable mouse in all modes
set mouse=a





"----------------Searching----------------"

"Show matches as their typed
set incsearch

"Highlight search matches
set hlsearch





"----------------Pretty Stuff----------------"

"Set terminal
set term=screen-256color

"Set 256 colors
set t_Co=256

"Colorscheme
colorscheme space-vim-dark

"Powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2

"----------------Filetype Settings----------------"

"*
"
"YAML
"
"*
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab





"----------------Non-Plugin Mappings----------------"

"Remap ESC to jk
:inoremap jk <Esc>

"Map ,ev to open vimrc file
nmap <Leader>ev :e $MYVIMRC<cr>

"Open snippets directory
nmap <Leader>es :e ~/.vim/snippets/

"Turn off search highlighting
nmap <Leader><space> :nohlsearch<cr>

"Maximize current Vim pane
nmap <Leader>zo <C-w>\| <C-w>_

"Make all panes equal size
nmap <Leader>eq <C-w>=

"Run ctags, excluding the specified folders
nnoremap <Leader>ct :!ctags -R --exclude={node_modules,vendor,.git}<CR>

"Find a tag
nmap <Leader>ft :tag<space>






"----------------PHP Mappings----------------"

"Auto insert use statments
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

"Insert use statements
autocmd FileType php inoremap <Leader>iu <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>iu :call PhpInsertUse()<CR>

"Sort use statements
autocmd FileType php inoremap <Leader>su <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>su :call PhpSortUse()<CR>

"Sort use statements by length
let g:php_namespace_sort = "'{,'}-1!awk '{print length, $0}' | sort -n -s | cut -d' ' -f2-"

"After inserting use statement, sort
let g:php_namespace_sort_after_insert = 1

"Auto create fully qualified class name
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>fq <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>fq :call PhpExpandClass()<CR>

"Check PHP against psr2
let g:php_cs_fixer_rules = "@PSR2"

"Run the PHP checker
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"Docblock config
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>





"----------------Plugin Config----------------"

"*
"
"CtrlP
"
"*

"Ignore stuff during search
let g:ctrlp_custom_ignore='node_modules\|git\|vendor\|build'

"Search window layout
let g:ctrlp_match_window ='bottom,order:btt,min:1,max:30,results:30'

"Set search to current working directory
let g:ctrlp_working_path_mode = 'w'

"Show tags list
nmap <Leader>bt :CtrlPBufTag<cr>

"Recent files
nmap <Leader>r :CtrlPMRUFiles<cr>

"*
"
"Ultisnips
"
"*

"Trigger config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"*
"
"Awk
"
"*

"Use ag instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

"*
"
"GReplace
"
"*

"Update searching method
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"*
"
"PHPQATools
"
"*

"Set path to phpmd executable
let g:phpqa_messdetector_cmd='/home/eric/.composer/vendor/phpmd/phpmd/src/bin/phpmd'

"Set path to phpcs executable
let g:phpqa_codesniffer_cmd='/home/eric/.composer/vendor/squizlabs/php_codesniffer/bin/phpcs'

" Stop the location list opening automatically
let g:phpqa_open_loc = 0

"*
"
"Airline
"
"*

let g:airline_theme='zenburn'

"*
"
"Quickmenu
"
"*

" choose a favorite key to show/hide quickmenu
noremap <silent><F12> :call quickmenu#toggle(0)<cr>

" enable cursorline (L) and cmdline help (H)
let g:quickmenu_options = "HL"





"----------------File Explorer----------------"

"*
"Netrw
"
"*

"Remove netrw banner
let g:netrw_banner=0

"Open file in previous window
let g:netrw_browse_split=4

"Set the width of the side bar %
let g:netrw_winsize=15

"*
"
"NerdTree
"
"*

"Remove top banner
let NERDTreeMinimalUI=1

"Close NerdTree after opening file
let NERDTreeQuitOnOpen=1

"Toggle NerdTree Open/Close
map <Leader>n :NERDTreeToggle<cr>





"----------------Auto-Commands----------------"

"Automatically source the Vimrc file on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END






"------------------Plug-In Stuff----------------"

"Turn on plugins
filetype plugin on

call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'

Plug 'mattn/emmet-vim'

Plug 'StanAngeloff/php.vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'scrooloose/nerdtree'

Plug 'mileszs/ack.vim'

Plug 'skwp/greplace.vim'

Plug 'tpope/vim-surround'

Plug 'arnaud-lb/vim-php-namespace'

Plug 'ervandew/supertab'

Plug 'joonty/vim-phpqa'

Plug 'SirVer/ultisnips'

Plug 'tobyS/vmustache'

Plug 'tobyS/pdv'

Plug 'joonty/vdebug'

Plug 'posva/vim-vue'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'edkolev/tmuxline.vim'

Plug 'aserebryakov/filestyle'

Plug 'mhinz/vim-startify'

Plug 'skywind3000/quickmenu.vim'

call plug#end()
