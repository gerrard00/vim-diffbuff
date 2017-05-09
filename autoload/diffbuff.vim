function! diffbuff#MakeScratch()
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
  setlocal nobuflisted
endfunction

function! diffbuff#DiffBuff() abort
  let l:split_line_number = line(".")
  let l:buffer_a_contents = getline(1, l:split_line_number - 1)
  let l:buffer_b_contents = getline(l:split_line_number, "$")
  tabedit
  call diffbuff#MakeScratch()
  call setline(1, l:buffer_a_contents)
  below new
  call diffbuff#MakeScratch()
  " :normal <C-w>j
  call setline(1, l:buffer_b_contents)
  wincmd k
  windo diffthis
endfunction
