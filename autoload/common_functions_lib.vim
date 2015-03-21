function! common_functions_lib#SetAlternateFile(previous_file)
  if strlen(a:previous_file) && a:previous_file != expand('%')
    execute 'buffer ' . a:previous_file
    buffer #
  endif
endfunction
