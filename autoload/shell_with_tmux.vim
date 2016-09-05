let s:save_cpo = &cpo
set cpo&vim

function! shell_with_tmux#open(cmd)
  if empty($TMUX)
    echo 'Needs tmux'
    return 1
  endif

  call system(printf("tmux split-window '%s'", a:cmd))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et fdm=marker ft=vim ts=2 sw=2 sts=2:
