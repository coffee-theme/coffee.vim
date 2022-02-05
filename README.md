# Coffee theme -- vim

Coffee is a nice, warm colour scheme for software
based of gruvbox which is light on eye strain and feels
warm and cozy

![colourscheme preview](https://files.ari-web.xyz/files/github.com.coffee.vim.jpg)

# Third-party plugin support

- [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) (fork: [coffee-theme/lightline.vim](https://github.com/coffee-theme/lightline.vim))
- [drmingdrmer/vim-tabbar](https://github.com/drmingdrmer/vim-tabbar)

# Installation

_These are only few examples_

## [Vundle](https://github.com/VundleVim/Vundle.vim)

```vim
call vundle#begin()
" ...

Plugin 'coffee-theme/coffee.vim'

" ...
call vundle#end()
```

## [NeoBundle](https://github.com/Shougo/neobundle.vim)

```vim
call neobundle#begin(expand('...'))
" ...

NeoBundle 'coffee-theme/coffee.vim'

" ...
call neobundle#end()
```

## [VimPlug](https://github.com/junegunn/vim-plug)

```vim
call plug#begin("...")
" ...

Plug 'coffee-theme/coffee.vim'

" ...
call plug#end()
```

## [Pathogen](https://github.com/tpope/vim-pathogen)

```sh
$ cd ~/.vim/bundle
$ git clone https://github.com/coffee-theme/coffee.vim
```

# Scripts

The `generate.py` script is a dirty script to generate `cterm` colours only
using gui-colours, `src/...` are the source files and `colours/...` are
pre-built files

To build it yourself run

```bash
$ ./scripts/generate.py src/coffee.vim | tee colors/cofee.vim
```
