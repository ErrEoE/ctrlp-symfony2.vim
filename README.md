# ctrlp-symfony2.vim [![Build Status](https://travis-ci.org/voronkovich/ctrlp-symfony2.vim.svg?branch=master)](https://travis-ci.org/voronkovich/ctrlp-symfony2.vim)

This is a [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) plugin that allows you to open your [Symfony 2 & 3](http://symfony.com/) app files easily. For now, this plugin provides:

* `:CtrlPSymfonyServices` list all project services
* `:CtrlPSymfonyServiceDefinition` show service definition
* `:CtrlPSymfonyRoute` show all project route, you can enter `<Enter>` or `<c-v>` paste selected item into your current buffer

## Installation


### Using [vundle](https://github.com/gmarik/vundle)

Add to vimrc:

``` vim
Plugin 'ErrEoE/ctrlp-symfony2.vim'
```

### Running tests

Tests are run using a Ruby test runner, so you'll have to have Ruby installed, then run

```sh
$ bundle install
```

Now you can run tests with

```sh
$ vim-flavor test t/
```

### TODO

* implement `gf` jump to the class definition

## License

Copyright (c) Voronkovich Oleg.  Distributed under the same terms as Vim itself.
See `:help license`.
