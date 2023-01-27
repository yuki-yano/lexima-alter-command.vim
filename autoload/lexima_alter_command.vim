function! lexima_alter_command#add_rule(original, alternative) abort
  let input_space = '<C-w>' . a:alternative . '<Space>'
  let input_cr    = '<C-w>' . a:alternative . '<CR>'

  let rule = {
  \ 'mode': ':',
  \ 'at': '^\(''<,''>\)\?' . a:original . '\%#$',
  \ }

  call lexima#add_rule(extend(rule, { 'char': '<Space>', 'input': input_space }))
  call lexima#add_rule(extend(rule, { 'char': '<CR>',    'input': input_cr    }))
endfunction
