Type text as pasted via fcitx5.

* No delay when input cjk (after https://github.com/junegunn/fzf/issues/4316)
```sh
fzf --bind 'change:execute-silent:sleep 1'
```

* Insert text directly in normal mode in vim/nvim (~you can no longer use emoji as shortcut~)
* but now you can use any emoji store your key now (todo: a emoji-backend plugin... what?)
```vim
inoremap 😃 anything-maybe
```
