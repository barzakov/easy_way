" use visual bell instead of beeping
set vb

" incremental search
set incsearch
"
" syntax highlighting
set bg=light
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


" Tets prove etc
" Te comiler below need perlprove.vim file in .vim/compiler dir.
au BufRead,BufNewFile *.t set filetype=perl | compiler perlprove
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
autocmd BufNewFile *.p*
   \ 0put = '#!/usr/bin/perl'  |
   \ 1put = 'use strict;' |
   \ 2put = 'use warnings;' |
augroup END
endif
