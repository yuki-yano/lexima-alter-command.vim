if exists('g:loaded_lexima_alter_command')
  finish
endif

command! -nargs=+ LeximaAlterCommand call lexima_alter_command#add_rule(<f-args>)

let g:loaded_lexima_alter_command = 1
