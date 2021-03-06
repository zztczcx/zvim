autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! BufReadPost Gemfile set ft=ruby

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,big5,default " 检测编码顺序"
set showtabline=2
set laststatus=2
set guitablabel=%t
set ignorecase smartcase
set smarttab
set wrap
set whichwrap+=l,h
set number
set history=50
set autoread
syntax enable
set incsearch
set nobackup
set copyindent
set winaltkeys=no
set autoindent  
set shiftwidth=4
set softtabstop=4

set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
"set backspace=4
set ruler  
set showcmd
set incsearch
set ignorecase 

"代码折叠
"set fdm=manual
set nofoldenable 
"搜索高亮
set hlsearch
set mouse=n


"分屏位置移动
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
:map <A-<> <C-W><
:map <A->> <C-W>>
:set mousefocus
"在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入  
""set cursorcolumn  " 高亮光标列
set cursorline    " 高亮光标行
set showmatch 
set showmode
set matchtime=5
filetype plugin indent on
map <F5> <Esc>gg=G<C-o> 
map <F6> <Esc>:tabedit<Enter>
map \p <Esc>"*p<Enter>k$a
map \y <Esc>"*y<Enter>
vmap \y "+y<Enter>
vmap <C-c> "+y<Enter>
map <C-c> <Esc>
map <F1> <Esc>:w<Enter>
map \w <Esc>:w<Enter>
map <C-s> <Esc>:w<Enter>
imap <C-s> <Esc>:w<Enter>a
map <F2> <Esc>:wall<Enter>
imap <F1> <Esc>:w<Enter>a
imap <C-x><C-s> <Esc>:w<Enter>a
imap <F2> <Esc>:wall<Enter>a
imap <C-b> <Esc>i
imap <C-c> <Esc>
imap <C-l> <Esc>zza
"imap <C-z> <Esc>ui
imap <C-r> <Esc><C-r>i
"map <C-z> <Esc>u
imap <C-n> <Down>
imap <C-f> <Esc>la
imap <C-p> <Up>
imap <C-e> <Esc>$a
imap <C-a> <Esc>0i
imap <C-d> <Esc>lxi
imap <C-k> <Esc>ld$a
"imap <C-z> <Esc>ua
imap <A-d> <Esc>ldwi
imap <A-Backspace> <Esc>ldbi
imap <A-f> <Esc>lwi
"nerdtree
imap <f3> <esc>:NERDTreeToggle<enter>
map <f3> <esc>:NERDTreeToggle<enter>
""""IndentGuidesToggle
imap <f7> <esc>:IndentGuidesToggle<enter>
map <f7> <esc>:IndentGuidesToggle<enter>
""tagbar
nmap <F8> :TagbarToggle<CR>
imap <F8> :TagbarToggle<CR>
""""

set fileencodings=utf-8,cp932
map <F1> <Esc>:w<Enter>
map <A-x> <Esc>:set filetype=
map <S-F5> :source ~/.vimrc<Enter>
"翻标签
map <C-Tab> <Esc>gt
map <C-S-Tab> <Esc>gT
imap <C-Tab> <Esc>gt
imap <C-S-Tab> <Esc>gT
vmap <C-Tab> <Esc>gt
vmap <C-S-Tab> <Esc>gT
map H <Esc>gT
map L <Esc>gt
"快捷插入各种编程括号
"""
"命令行下也绑定emacs按键
cnoremap <C-e> <END>
cnoremap <C-a> <HOME>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>

"插入（） {}
:vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>) )
:vnoremap _{ <Esc>`>a}<Esc>`<i{<Esc>} }

"代码自动fold设定
"set foldmethod=syntax
"set foldlevelstart=1

"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML
"

autocmd BufNewFile,BufRead *.scss set filetype=sass
"au BufRead,BufNewFile *.s{c,a}ss set filetype=css
au! FileType scss syntax cluster sassCssAttributes add=@cssColors



" for ctags
let Tlist_Ctags_Cmd='/usr/local/bin/ctags' 
let g:generate_tags=1
" for cscope in new tab
"nnoremap <Leader>fs : tabnew %<CR><Leader>fs

if has("gui_macvim")
    set guifont=Monaco:h15
    set macmeta
    "let macvim_skip_cmd_opt_movement=1
    "let macvim_hig_shift_movement=1
    vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
    map \p :call setreg("\"",system("pbpaste"))<CR>p
    let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
    
    inoremap <C-e> <END>
    inoremap <C-a> <HOME>
    inoremap <C-f> <Right>
    inoremap <C-b> <Left>
    inoremap <M-f> <S-Right>
    inoremap <M-b> <Esc>bi
    inoremap <M-n> <Down>
    inoremap <M-p> <Up>
    inoremap <A-b> <Esc>bi
else
    set guifont=Monospace\ 14
    inoremap <M-b> <Esc>bi
    inoremap <A-b> <Esc>bi
endif

"""""""""""""""""bundle start"""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" original repos on github
"Bundle 'tpope/vim-rails.git'
"方便添加删除两端 括号 标签之类的
Bundle 'tpope/vim-surround'
"状态栏
Bundle 'Lokaltog/vim-powerline'
"Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'jiangmiao/auto-pairs.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'msanders/snipmate.vim.git'
Bundle 'kchmck/vim-coffee-script.git'
"Bundle 'uggedal/go-vim'
"代码补完
Bundle 'Shougo/neocomplcache'
"Bundle 'tpope/vim-markdown'
Bundle 'skammer/vim-css-color'
Bundle 'scrooloose/nerdcommenter'
"方便对齐 冒号啊，制作表格的情况
Bundle 'godlygeek/tabular' 
Bundle 'flazz/vim-colorschemes'
Bundle 'mileszs/ack.vim'
"提示代码calss method之类的
Bundle 'majutsushi/tagbar'
"Bundle 'oguzbilgic/sexy-railscasts-theme'
"Bundle 'sickill/vim-monokai'
Bundle 'mattn/emmet-vim'
Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'rstacruz/sparkup'
"让vim光标正常的插件
"Bundle 'sjl/vitality.vim'
Bundle 'vim-scripts/ruby-matchit'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/mru.vim'
Bundle 'scrooloose/syntastic'
" javascript模板
Bundle 'pangloss/vim-javascript'
Bundle 'briancollins/vim-jst'
" vim-scripts repos
Bundle 'FuzzyFinder'
Bundle 'blackboard.vim'
Bundle 'L9'
" vim surroud
Bundle 'surround.vim'

"for c programming
Bundle 'vim-scripts/cscope.vim'
Bundle 'chazy/cscope_maps'
"Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/ctags.vim--Johnson'
Bundle 'vim-scripts/taglist.vim'
Bundle 'danro/rename.vim'
"search
Bundle 'rking/ag.vim'

"git 
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'

"python
Bundle 'klen/python-mode'
Bundle 'Glench/Vim-Jinja2-Syntax'

"yaml
Bundle 'stephpy/vim-yaml'

"go
Bundle 'fatih/vim-go'

"erlang
Bundle 'elixir-lang/vim-elixir'
"Bundle 'jimenezrick/vimerl'

"typescript
Bundle 'leafgarland/typescript-vim'

"quickfix enter
"Bundle 'yssl/QFEnter' 有bug

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" vim-scripts repos
"Bundle 'The-Nerd-tree'
"Bundle 'rails.vim'
"Bundle 'snipMate'

""""""""""""""""""bundle end""""""""""""""""""""

"cscope mapping
nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

" go mapping
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

"python-mode setting
let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion = 0
let g:pymode_lint_unmodified = 1
let NERDTreeIgnore = ['\.pyc$']

"sudo write
noremap <Leader>W :w !sudo tee % > /dev/null



let g:ackprg="ack-grep -H --nocolor --nogroup --column"  "ack用的 

" F4和shift+F4调用FuzzyFinder命令行菜单"
"
function! GetAllCommands()
    redir => commands
    silent command
    redir END
    return map((split(commands, "\n")[3:]),
		\      '":" . matchstr(v:val, ''^....\zs\S*'')')
endfunction

" 自定义命令行
let g:fuf_com_list=[':FufBuffer',':FufFile',':FufCoverageFile',':FufDir',
	    \':FufMruFile',':FufMruCmd',':FufBookmarkFile',
	    \':FufBookmarkDir',':FufTag',':FufBufferTag',
	    \':FufTaggedFile',':FufJumpList',':FufChangeList',
	    \':FufQuickfix',':FufLine',':FufHelp',
	    \":FufFile \<C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]\<CR>",
	    \":FufDir \<C-r>=expand('%:p:~')[:-1-len(expand('%:p:~:t'))]\<CR>",
	    \]       
nnoremap <silent> <C-F4> :call fuf#givencmd#launch('', 0, '选择命令>', g:fuf_com_list)<CR>
map <S-F4> <Esc>:FufFile<CR>
map <F4> <Esc>:FufBuffer<CR>

"window between tab
function! MoveToPrevTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() != 1
    close!
    if l:tab_nr == tabpagenr('$')
      tabprev
    endif
    vert topleft split
  else
    close!
    exe "0tabnew"
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc

function! MoveToNextTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() < tab_nr
    close!
    if l:tab_nr == tabpagenr('$')
      tabnext
    endif
    vert topleft split
  else
    close!
    tabnew
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc



"nnoremap <A-.> :call MoveToNextTab()<CR>
"nnoremap <A-,> :call MoveToPrevTab()<CR>
"map <C-m> :call MoveToNextTab()<CR><C-w>H
map <C-n> :call MoveToPrevTab()<CR><C-w>H





"cp ~/.vimrc ~/StudyNotes/vimrc.txt

"colorscheme blackboard

"zencoding
let g:user_zen_settings = { 
  \  'indentation' : '  ', 
  \  'perl' : { 
  \    'aliases' : { 
  \      'req' : 'require ' 
  \    }, 
  \    'snippets' : { 
  \      'use' : "use strict\nuse warnings\n\n", 
  \      'warn' : "warn \"|\";", 
  \    } 
  \  } 
  \} 
 
  ""let g:user_zen_expandabbr_key = '<c-l>,'    "设置为ctrl+e展开
  let g:user_zen_leader_key = '<c-l>'
  let g:use_zen_complete_tag = 1
""" end_zencoding

""sparkup
"let g:sparkupExecuteMapping = '<C-e>'

"let g:sparkupNextMapping =
"""end_sparkup

if has("gui_running")
else
  set t_Co=16
"设置shell下面的光标形状
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"让tmux也支持光标形状
  "if exists('$TMUX')
    "let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    "let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  "else
    "let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    "let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  "endif
endif

"let g:airline_powerline_fonts = 1

let g:Powerline_symbols = 'fancy'
let g:AutoPairsShortcutFastWrap='<C-g>'
imap <leader>1 -><Esc>a
imap <leader>2 =><Space><Esc>i
imap <leader>3 <%%><Esc>hi
imap <leader>4 <><Esc>i
imap <leader>5 =><Space><Esc>i
imap <leader>s #{}<Esc>i
imap <leader>6 <%%><Esc>hi

"neocomplcache
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

let g:ackprg = 'ag --nogroup --nocolor --column'
set completeopt-=preview

filetype plugin on
set background=dark
colorscheme solarized
syntax on

