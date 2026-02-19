# Tmux + VS Code Workflow

This project is configured to use `tmux` for terminal persistence, which is especially powerful when integrated with VS Code.

## Persistence Strategy

By using `tmux` inside the VS Code integrated terminal, your processes (servers, build watchers, etc.) will continue running even if you close VS Code or your connection drops.

### VS Code Configuration

To give VS Code its own dedicated session and ensure it handles the `tmux` attachment correctly, add the following to your VS Code `settings.json`:

```json
"terminal.integrated.profiles.linux": {
    "zsh (tmux)": {
        "path": "tmux",
        "args": ["new-session", "-A", "-s", "vscode"]
    }
},
"terminal.integrated.defaultProfile.linux": "zsh (tmux)"
```

* **`-A`**: Attaches to the session if it exists, or creates it if it doesn't.
* **`-s vscode`**: Names the session "vscode" to keep it separate from your standalone terminal sessions.

### Per-Project Persistence (Advanced)

If you want each folder or project you open in VS Code to have its own dedicated, persistent session, you can use VS Code's variable substitution in your `settings.json`:

```json
"terminal.integrated.profiles.linux": {
    "zsh (tmux-project)": {
        "path": "tmux",
        "args": ["new-session", "-A", "-s", "${workspaceFolderBasename:default}"]
    }
},
"terminal.integrated.defaultProfile.linux": "zsh (tmux-project)"
```

* **`${workspaceFolderBasename}`**: Automatically names the tmux session after your open folder (e.g., a folder named `my-api` will create a tmux session named `my-api`).
* **`:default`**: Provides a fallback session name if you open VS Code without a specific folder.

## Key Aliases & Tools

* **`vs`**: Provided by the `vscode` plugin. Use `vs .` or `vs <file>` from any tmux pane to open it in VS Code.
* **`ta`**: Quickly re-attach to your session if the terminal tab is closed.
* **`tl`**: List all active sessions.

## Focus Events

The `tmux.conf` includes `set -g focus-events on`, which allows VS Code to detect when you switch panes. This is essential for features like "Auto Save on Window Change" to function correctly inside tmux.
