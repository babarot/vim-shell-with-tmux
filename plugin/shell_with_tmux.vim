if exists("g:loaded_open_sh_with_tmux")
  finish
endif
let g:loaded_open_sh_with_tmux = 1

let s:save_cpo = &cpo
set cpo&vim

command! Sh call shell_with_tmux#open($SHELL)

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et fdm=marker ft=vim ts=2 sw=2 sts=2:
