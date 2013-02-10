syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set backupdir=~/.vim/tmp
set mouse=a
if has("gui_running")
    set guifont=Menlo:h10
    color muratboard
    set number
endif

" cross-instance buffers
vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/.vim/reg.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/.vim/reg.txt<CR>
map <silent> ,p :sview ~/.vim/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ,P :sview ~/.vim/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P
