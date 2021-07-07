" bindings and functions for latex

" compile .tex file
function! CompileTex()
  execute "silent !pdflatex " bufname("%")
endfunction

" open pdf file 
function! OpenPDF()
  let pdfname = substitute(bufname("%"), ".tex", ".pdf", "")
  execute "silent !zathura " pdfname "&"
endfunction

nnoremap <leader>lc :call CompileTex()<CR>
nnoremap <leader>lo :call OpenPDF()<CR>
nnoremap <leader>ll :call CompileTex()<CR> :call OpenPDF()<CR>
