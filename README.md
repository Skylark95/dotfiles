Dotfiles
========

After cloning this repo, run install to automatically set up the development environment. Note that the install script is idempotent: it can safely be run multiple times.

Dotfiles uses [Dotbot](https://github.com/anishathalye/dotbot) for installation.

Applications
------------
Dotfiles assumes you have the following applications installed for some aliases / plugins:

* [curl](https://github.com/curl/curl)
* [fzf](https://github.com/junegunn/fzf)
* [gitui](https://github.com/extrawurst/gitui)
* [kitty](https://github.com/kovidgoyal/kitty)
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [terraform](https://github.com/hashicorp/terraform)
* [vim](https://github.com/vim/vim)

Optional applications that will enable additional aliases if installed:

* [arch linux](https://github.com/archlinux)
* [xclip](https://github.com/astrand/xclip)

Plugins / Submodules
--------------------
Dotfiles uses the following plugins and submodules for different applications:

* `git`: [git-open](https://github.com/paulirish/git-open)
* `vim`: [tabular](https://github.com/godlygeek/tabular)
* `vim`: [vim-log-highlighting](https://github.com/MTDL9/vim-log-highlighting)
* `vim`: [vim-ripgrep](https://github.com/jremmen/vim-ripgrep)
* `vim`: [vim-terraform](https://github.com/hashivim/vim-terraform)
* `vim`: [vimrc](https://github.com/amix/vimrc)
* `zsh`: [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
* `zsh`: [spaceship-prompt](https://github.com/spaceship-prompt/spaceship-prompt)
* `zsh`: [spaceship-vi-mode](https://github.com/spaceship-prompt/spaceship-vi-mode)
* `zsh`: [zgen](https://github.com/tarjoilija/zgen)
* `zsh`: [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* `zsh`: [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

Making Local Customizations
---------------------------

You can make local customizations to some programs by editing these files:

* `git`: `~/.gitconfig_local`
* `kitty`: `~/.config/kitty/local.conf`
* `sh`: `~/.alias_local`
* `sh`: `~/.env_local`
* `sh`: `~/.functions_local`
* `zgen`: `~/.zgen_before` run before `zgen`
* `zgen`: `~/.zgen_after` run after `zgen save`
* `zsh`: `~/.zprofile_local` run after `.zprofile`
* `zsh`: `~/.zshrc_local` run after `.zshrc`

Inspiration
-----------
Project structure, plugins, aliases, etc. took inspiration from the following repositories:

* [anishathalye's dotfiles](https://github.com/anishathalye/dotfiles)
* [denysdovhan's dotfiles](https://github.com/denysdovhan/dotfiles)

License
-------

This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

