"  private {{{1
function! s:NotATerminal(filename)
  let matched_terminal_string = matchstr(a:filename, '^term://')
  return !strlen(matched_terminal_string)
endfunction
" private }}}

function! common_functions_lib#SetAlternateFile(previous_file)
  if strlen(a:previous_file) && a:previous_file != expand('%') && <SID>NotATerminal(a:previous_file)
    execute 'buffer ' . a:previous_file
    buffer #
  endif
endfunction
