" Vim color file

set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "muratboard"

hi Normal       guifg=#ffffff guibg=#0D1021                     

hi Comment      guifg=#aeaeae gui=none
hi Constant     guifg=#d7fa41 gui=none
hi String       guifg=#64ce3e gui=none
hi Statement    guifg=#f8de33 gui=none
hi Entity       guifg=#fa6513 gui=none
hi Support      guifg=#8fa6cd gui=none
hi LineNr       guifg=#aeaeae guibg=#373A4D gui=none 
hi Title        guifg=#f6f3e8 guibg=NONE    gui=none
hi NonText      guifg=#808080 guibg=#0D1021 gui=none

hi Visual       guibg=#474A5E
hi VertSplit    guifg=#444444 guibg=#444444
hi StatusLine   guifg=#f6f3e8 guibg=#444444 gui=none
hi StatusLineNC guifg=#857b6f guibg=#444444
hi SpecialKey   guifg=#808080 guibg=#343434 gui=none


hi link Define          Entity
hi link Function        Entity

hi link Structure       Support
hi link Special         Support
hi link Test            Support

hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant

hi link Float           Number

hi link Conditional     Statement
hi link StorageClass    Statement
hi link Operator        Statement
hi link Statement       Statement
