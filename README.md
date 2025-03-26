Type text as pasted via fcitx5.

* No delay when input cjk (after https://github.com/junegunn/fzf/issues/4316)
```sh
fzf --bind 'change:execute-silent:sleep 1'
```

* Insert text directly in normal mode in vim/nvim
```vim
" but you can no longer use nnoremap-ed emoji as shortcut
nnoremap 😁 j
```
