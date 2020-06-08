# CtrlP Modified

A simple CtrlP plugin that is designed for easily viewing a set of files. It supports an arbitrary search command as `g:ctrlp_modified_command`. While it is named Ctrlp Modified it can really work for anything!

You can install with any plugin manager:

```vim
Plugin 'youngmoney/vim-ctrlp-modified'
```

Git user may want something like:

```vim
g:ctrlp_modified_command = "git status --porcelain -z --untracked-files=all | tr '\0' '\n' | cut -c 4-"
```
