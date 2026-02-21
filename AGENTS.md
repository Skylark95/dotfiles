# Dotfiles Agent Context

This project contains personal dotfiles managed by [Dotbot](https://github.com/anishathalye/dotbot). It is designed to be idempotent and easily portable across Linux systems.

## Project Overview

*   **Management Tool:** Dotbot (configured via `install.conf.yaml`).
*   **Shell:** Zsh, managed with `zgenom` for plugin management and `spaceship-prompt`.
*   **Editor:** Vim (custom runtime in `vim_runtime/`) and Neovim (aliased as `vi`).
*   **Multiplexer:** Tmux (using `oh-my-tmux` and `tpm`).
*   **Plugins:** Heavily reliant on git submodules located in `vim_plugins/` and `tmux_plugins/`.

## Key Files and Directories

*   `install.conf.yaml`: The master mapping file for Dotbot. Defines where symlinks are created.
*   `zshrc`: Main Zsh configuration. Loads `zgenom`, `env`, `alias`, `functions`, and `completions`.
*   `vimrc` / `vim_runtime/`: A modular Vim configuration. User-specific tweaks go in `my_configs.vim`.
*   `gitconfig`: Standard Git settings including `diff-so-fancy` for better diffs.
*   `alias`, `env`, `functions`, `completions`: Modular shell configuration files sourced by `zshrc`.

## Installation and Maintenance

The installation script is idempotent and can be run multiple times safely.

*   **Install/Update:** `./install`
*   **Reload Shell:** `src` or `reload` (aliases for `source ~/.zshrc`).
*   **Update Submodules:** `gsuir` (alias for `git submodule update --init --recursive`).

## Development Conventions

### Local Customizations
To avoid committing sensitive or machine-specific data, use the following `_local` files which are ignored by Git or handled as optional includes:

*   **Git:** `~/.gitconfig_local`
*   **Zsh:** `~/.zshrc_local`, `~/.zprofile_local`, `~/.zgen_before`, `~/.zgen_after`
*   **Shell:** `~/.env_local`, `~/.alias_local`, `~/.functions_local`, `~/.completions_local`
*   **Vim:** `~/.vim_runtime/my_configs.vim`
*   **Tmux:** `~/.tmux.conf.local`

### Aliases and Shortcuts
Commonly used aliases defined in `alias`:
*   `vi`: Aliased to `vim`.
*   `e`: Aliased to `$EDITOR`.
*   `dotfiles`: `cd` to the dotfiles directory.
*   `vs`: Open file/directory in VS Code.
*   `tf*`: Various Terraform shortcuts.

### Adding New Configurations
1.  Place the new config file in the root or an appropriate subdirectory.
2.  Add a mapping to `install.conf.yaml`.
3.  Run `./install` to create the symlink.
