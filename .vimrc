syntax on
set ai
set tabstop=4
colorscheme jcs

" set up Go to autoformat on save
function! GoFmt()
  let file = expand('%')
  silent execute "!gofmt -w " . shellescape(file) . " 2>/dev/null"
  edit!
endfunction

command! GoFmt call GoFmt()
augroup go_autocmd
  autocmd BufWritePost *.go GoFmt
augroup END

autocmd BufNewFile,BufRead *.py :set expandtab

set backspace=indent,eol,start
set hidden
set ignorecase
set incsearch
set laststatus=2
set nocompatible
set nofoldenable
set nohlsearch
set nostartofline
set ruler
set showcmd
set showmatch
set showmode
set smartcase
set smarttab
set tabstop=4
set timeoutlen=0
