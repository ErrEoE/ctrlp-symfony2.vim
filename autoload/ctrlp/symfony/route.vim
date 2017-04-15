if exists('g:loaded_ctrlp_symfony_route') && g:loaded_ctrlp_symfony_route
    finish
endif
let g:loaded_ctrlp_symfony_route = 1

let s:route_var = {
            \ 'init':   'ctrlp#symfony#route#init()',
            \ 'accept': 'ctrlp#symfony#route#accept',
            \ 'lname':  'Symfony route',
            \ 'sname':  'sf route',
            \ 'type':   'path'
            \}


if exists('g:ctrlp_ext_vars') && !empty(g:ctrlp_ext_vars)
    let g:ctrlp_ext_vars = add(g:ctrlp_ext_vars, s:route_var)
else
    let g:ctrlp_ext_vars = [s:route_var]
endif

let s:route = {}

fun! ctrlp#symfony#route#init() abort
    " TODO:get route
    let s:route = symfony#get_route()
    return keys(s:route)
endf

fun! ctrlp#symfony#route#accept(action,str) abort
    "TODO:
    call ctrlp#exit()
    call setreg('"',a:str)
    if a:action == 'e'
      exe 'norm! P'
    elseif a:action == 'v'
      exe 'norm! p'
    end
endf

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
fun! ctrlp#symfony#route#id() abort
    return s:id
endf
