syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set background=dark
set dir=~/.vim/tmp//
set noswapfile
set mouse=a
set number

if has("gui_running")
    set guifont=Menlo:h10
    color blackboard
else
    color blackboard
endif

" cross-instance buffers
vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/.vim/reg.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/.vim/reg.txt<CR>
map <silent> ,p :sview ~/.vim/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ,P :sview ~/.vim/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P

filetype on
let python_highlight_all=1
