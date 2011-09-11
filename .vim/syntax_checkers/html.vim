"============================================================================
"File:        html5.vim
"Description: Syntax checking plugin for syntastic.vim
"Maintainer:  Antonio Touriño <atourino at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================
if exists("loaded_html_syntax_checker")
    finish
endif
let loaded_html5_syntax_checker = 1

if !executable("html5check.py")
    finish
endif

function! SyntaxCheckers_html_GetLocList()
    let output = system("html5check.py -e -h " . shellescape(expand("%")))
    let system_error_list = split(output, "\n")
    if v:shell_error != 0
        let error_list = []
        let line = 0
        for error in system_error_list
            let line = line + 1
            let msg = error
            :call add(error_list, {'lnum' : line, 'text' : msg, 'bufnr': bufnr(""), 'type': 'E' })
        endfor
        return error_list
    endif
    return []
endfunction
