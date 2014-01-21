colorscheme vc
filetype on

syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cindent
set smartindent
set nocompatible

"set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
filetype plugin indent on
set completeopt=longest,menu

let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"
let g:winManagerWidth=30
let g:Tlist_Show_One_File=1
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Use_Right_Window = 1
let g:OmniCpp_ShowPrototypeInAbbr = 1

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

nmap <F9> :WMToggle<CR>
noremap <silent> <F8> :BufExplorer<CR>

"vim_smooth_scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

if has("cscope")
     set csprg=/usr/local/bin/cscope
     set csto=0
     set cst
     set nocsverb
     " add any database in current directory
     if filereadable("cscope.out")
        cs add cscope.out
        map <C-]> :cscope find g <C-R>=expand("<cword>")<CR><CR>
        "map <C-\> :cscope find c <C-R>=expand("<cword>")<CR><CR>
     " else add database pointed to by environment
     elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
     endif
     set csverb
endif

