# LazyVim trial config

Runs side by side with the existing `nvim/` (Vimscript/amix) config.

* Launch: `lv` (alias for `NVIM_APPNAME=nvim-lazyvim nvim`); `vi` is unchanged.
* Install: `./install` links this dir to `~/.config/nvim-lazyvim`. First launch bootstraps lazy.nvim and plugins.
* Requirements: nvim 0.11+, git, a C compiler (treesitter), ripgrep, fd, a Nerd Font; JDK 17+ for the Java extra (remove it from `lazyvim.json` if unwanted).
* Update: `:Lazy sync`, then commit `lazy-lock.json`. Extras: `:LazyExtras`.
* Health: `:checkhealth lazy`, `:LazyHealth`.

## Porting notes (from `my_configs.vim`)

Ported: 2-space tabs, `foldlevelstart=99`, indent folds per filetype, kitty marker folds, Dracula, dotfile filetypes, `<leader>r` run file, nuuid/log-highlighting/jsonnet.
Dropped: lightline config (lualine), ctrlp/ack config (picker), `<leader>c`/`<leader>a` maps (conflict with LazyVim groups).

## Keymap cheat-sheet (leader is `<space>`, old leader was `,`)

| Old | LazyVim |
|---|---|
| `,w` save | `<C-s>` |
| `,j` CtrlP | `<space><space>` / `<leader>ff` |
| `,f` MRU | `<leader>fr` |
| `,b` / `,o` buffers | `<leader>,` / `<leader>fb` |
| `,nn` / `,nf` NERDTree | `<leader>e` / `<leader>E` |
| `,g` / `,a` Ack | `<leader>sg` (grep), `<leader>sw` (word) |
| `,l` / `,h` next/prev buffer | `<S-l>` / `<S-h>` |
| `,bd` | `<leader>bd` |
| `,tn` etc. tabs | `<leader><tab>n`, `<leader><tab>]` |
| `,ss` spell | `<leader>us` |
| `,pp` paste | n/a (nvim handles paste) |
| `,d` gitgutter | `<leader>ug` / `<leader>gh*` hunks |
| `,v` GBrowse | `<leader>gB` |
| `,z` Goyo | `<leader>uz` (zen) |
| `,cc` quickfix | `<leader>xq` |
| `<M-j>/<M-k>` move line | same |
| `gc` comment | same |
| `ys`/`cs`/`ds` surround | `gsa` / `gsr` / `gsd` (mini.surround) |
| `<C-h/j/k/l>` windows | same |
| `<F5>` CompileRun | not ported |
| `,q` / `,x` scratch buffers | `<leader>.` scratch |

Press `<space>` and wait for which-key to browse everything.
