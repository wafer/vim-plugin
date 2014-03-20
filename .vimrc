colorscheme desert

set nu
set autoindent
set tabstop=4
set shiftwidth=4
set mouse=a

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'bronson/vim-trailing-whitespace'

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

set cscopequickfix=s-,c-,d-,i-,t-,e-
set completeopt=longest,menu

set nocp
filetype plugin on

let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree"
let g:Tlist_Show_One_File=1
let g:Tlist_Use_SingleClick = 1
let g:Tlist_Auto_Open = 1
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Use_Right_Window = 1
let g:Tlist_WinWidth = 30
let g:SuperTabDefaultCompletionType="context"
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0


function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

nmap <F9> :WMToggle<CR>

function! <SID>ToggleWindowsManager()
    if IsWinManagerVisible()
        call s:CloseWindowsManager()
    else
        call s:StartWindowsManager()
   	    exe 'q'
    end
endfunction

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

