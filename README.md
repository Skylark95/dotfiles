Dotfiles
========

After cloning this repo, run install to automatically set up the development environment. Note that the install script is idempotent: it can safely be run multiple times.

Dotfiles uses [Dotbot](https://github.com/anishathalye/dotbot) for installation.

Programs
------------
Dotfiles assumes you have the following programs installed for some aliases / plugins:

* [curl](https://github.com/curl/curl)
* [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
* [fzf](https://github.com/junegunn/fzf)
* [gitui](https://github.com/extrawurst/gitui)
* [kitty](https://github.com/kovidgoyal/kitty)
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [terraform](https://github.com/hashicorp/terraform)
* [tig](https://github.com/jonas/tig)
* [tmux](https://github.com/tmux/tmux)
* [vim](https://github.com/vim/vim) or [neovim](https://github.com/neovim/neovim) (aliased as `vi`)

Optional programs that will enable additional aliases if installed:

* [aws-cli](https://github.com/aws/aws-cli)
* [bun](https://github.com/ovh/bun)
* [jsonnet](https://github.com/google/jsonnet)
* [maven](https://github.com/apache/maven)
* [node](https://github.com/nodejs/node) / [npm](https://github.com/npm/cli)
* [pnpm](https://github.com/pnpm/pnpm)
* [pyenv](https://github.com/pyenv/pyenv)
* [xclip](https://github.com/astrand/xclip)

Plugins / Submodules
--------------------
Dotfiles uses the following plugins and submodules for different programs:

* `git`: [git-open](https://github.com/paulirish/git-open)
* `kitty`: [dracula](https://github.com/dracula/kitty)
* `vim`: [copilot.vim](https://github.com/github/copilot.vim)
* `vim`: [tabular](https://github.com/godlygeek/tabular)
* `vim`: [vim-jsonnet](https://github.com/google/vim-jsonnet)
* `vim`: [vim-log-highlighting](https://github.com/MTDL9/vim-log-highlighting)
* `vim`: [vim-nuuid](https://github.com/kburdett/vim-nuuid)
* `vim`: [vim-ripgrep](https://github.com/jremmen/vim-ripgrep)
* `vim`: [vim-searchindex](https://github.com/google/vim-searchindex)
* `vim`: [vim-terraform](https://github.com/hashivim/vim-terraform)
* `vim`: [vimrc](https://github.com/amix/vimrc)
* `vim`: [xmledit](https://github.com/sukima/xmledit)
* `zsh`: [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
* `zsh`: [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
* `zsh`: [spaceship-prompt](https://github.com/spaceship-prompt/spaceship-prompt)
* `zsh`: [spaceship-vi-mode](https://github.com/spaceship-prompt/spaceship-vi-mode)
* `zsh`: [vscode](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode)
* `zsh`: [zgenom](https://github.com/jandamm/zgenom)
* `zsh`: [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* `zsh`: [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

Making Local Customizations
---------------------------

You can make local customizations to some programs by editing these files:

* `git`: `~/.gitconfig_local`
* `kitty`: `~/.config/kitty/local.conf`
* `sh`: `~/.alias_local`
* `sh`: `~/.completions_local`
* `sh`: `~/.env_local`
* `sh`: `~/.functions_local`
* `zsh`: `~/.zgen_before` run before `zgenom`
* `zsh`: `~/.zgen_after` run after `zgenom save`
* `zsh`: `~/.zprofile_local` run after `.zprofile`
* `zsh`: `~/.zshrc_local` run after `.zshrc`

See my [dotfiles-local](https://github.com/Skylark95/dotfiles-local) for an example.

### Workflow

* **`tmux` + VS Code**: This project is optimized for a persistent workflow. You can run `tmux` inside VS Code to keep processes alive across sessions. See [docs/tmux-vscode.md](docs/tmux-vscode.md) for setup and tips.
* **`vs` Alias**: Use the `vs` alias to quickly open files in VS Code from your terminal (e.g., `vs .` or `vs filename`).

Inspiration
-----------
Project structure, plugins, aliases, etc. took inspiration from the following repositories:

* [anishathalye's dotfiles](https://github.com/anishathalye/dotfiles)
* [denysdovhan's dotfiles](https://github.com/denysdovhan/dotfiles)

License
-------

This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

