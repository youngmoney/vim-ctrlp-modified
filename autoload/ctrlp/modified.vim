if exists('g:loaded_ctrlp_modified') && g:loaded_ctrlp_modified
  finish
endif
let g:loaded_ctrlp_modified = 1


let s:modified_var = {
\  'init':   'ctrlp#modified#init()',
\  'accept': 'ctrlp#acceptfile',
\  'lname':  'modified',
\  'sname':  'modified',
\  'type':   'path',
\  'nolim':  1,
\  'opmul':  1,
\}

if exists('g:ctrlp_ext_vars') && !empty(g:ctrlp_ext_vars)
  let g:ctrlp_ext_vars = add(g:ctrlp_ext_vars, s:modified_var)
else
  let g:ctrlp_ext_vars = [s:modified_var]
endif

function! ctrlp#modified#init()
  return split(system(get(g:, 'ctrlp_modified_command', 'echo no command specified')), "\n")
endfunc

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
function! ctrlp#modified#id()
  return s:id
endfunction
