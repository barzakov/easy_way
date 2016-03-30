" use visual bell instead of beeping
set vb

" incremental search
set incsearch
"
" syntax highlighting
set bg=light
let python_highlight_all=1
syntax on

" autoindent
autocmd FileType perl set autoindent|set smartindent

" 4 space tabs
autocmd FileType perl set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

" show matching brackets
autocmd FileType perl set showmatch

" show line numbers
autocmd FileType perl set number

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1
" Set the encoding to utf8
set encoding=utf-8

" Tets prove etc
" Te comiler below need perlprove.vim file in .vim/compiler dir.
au BufRead,BufNewFile *.t set filetype=perl | compiler perlprove
" Python ident 4 tabd 80 char line...
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab | 
    \ set autoindent |
    \ set fileformat=unix |
    \set encoding=utf-8 |
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
" Show bad whitespace.
"au BufRead,BufNewFile *.t,*.pl,*.sh,*.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
if has("autocmd")
augroup content
autocmd BufNewFile *.t
   \ 0put = '#!/usr/bin/perl'  |
   \ 1put = 'use strict;' |
   \ 2put = 'use warnings;' |
   \ 3put = 'use Test::Simple;' |
   \ 4put = 'use Test::More;' |
   \ 5put = 'use Test::Harness;' |
augroup END
augroup content
autocmd BufNewFile *.pl
   \ 0put = '#!/usr/bin/perl'  |
   \ 1put = 'use strict;' |
   \ 2put = 'use warnings;' |
augroup END
augroup content
autocmd BufNewFile *.py
   \ 0put = '#!/usr/bin/python3.5'  |
augroup END
endif
