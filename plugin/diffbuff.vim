" TODO: remove this, just a reminder for how to auto source on write
" autocmd BufWritePost *.vim :source %

if exists("g:loaded_DiffBuff")
  finish
endif
let g:loaded_DiffBuff = 1


command! DiffBuff call diffbuff#DiffBuff()
