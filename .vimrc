if has("autocmd")
augroup content
autocmd BufNewFile *.t
   \ 0put = '#!/usr/bin/perl -T'  |
   \ 1put = 'use strict;' |
   \ 2put = 'use warnings:' |
   \ 3put = 'use Test::Simple;' |
   \ 4put = 'use Test::More;' |
   \ 5put = 'use Test::Harness;' |
augroup END
endif
