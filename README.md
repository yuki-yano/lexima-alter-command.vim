# lexima-alter-command.vim

This plugin abbrev expands the Ex command in cmdline.

This plugin depends on [lexima.vim](https://github.com/cohama/lexima.vim).

## Usage

Two arguments are passed to LeximaAlterCommand.
When entering the Ex command, the cmdline input is replaced by the second argument if the first argument is matched.

### Config

```vim
" Simple usage
LeximaAlterCommand ee e!

" With atom ( Read `:h \%[]` )
LeximaAlterCommand cap\%[ture] Capture
LeximaAlterCommand r\%[un]     QuickRun
```

### Result

```
:ee<Space>       => :e!<Space>
:ee<CR>          => :e!<CR>

:cap<Space>      => :Capture<Space>
:capt<Space>     => :Capture<Space>
:capture<Space>  => :Capture<Space>

:r<Space>        => :QuickRun<Space>
:'<,'>r<Space>   => :'<,'>QuickRun<Space>
:'<,'>run<Space> => :'<,'>QuickRun<Space>
```

## TODO

- [ ] Respond to the use of range outside of visual

## Related project

- [vim-altercmd](https://github.com/kana/vim-altercmd)
