# .dotfiles GEMINI.md

This repository manages personal dotfiles using **GNU Stow**. All configurations should be managed within this repository and symlinked to the appropriate locations in the home directory.

## Core Mandates

### Tooling & Management

- **GNU Stow**: ALWAYS use `stow` to manage symlinks. Never manually symlink or copy files to the home directory if they belong in this repository.
- **Root Directory**: Perform all `stow` operations from the root of this repository (`~/.dotfiles`).
- **Target Directory Structure**: Within each top-level directory (e.g., `zsh/`, `git/`), the folder structure must mirror the target location in the home directory.
  - Example: `zsh/.zsh/` will be stowed as `~/.zsh/`.
  - Example: `config/.config/Code/User/settings.json` will be stowed as `~/.config/Code/User/settings.json`.

### OS-Specific Configurations

- **Zsh**: Configuration is split between common settings (`zsh/.zsh/shellrc`) and OS-specific entry points (`zsh/.zsh/zshrc_linux` and `zsh/.zsh/zshrc_macos`).
- **Detection**: When making changes to shell environments, identify if the change is global (put in `shellrc`) or platform-specific.

### Security & Privacy

- **No Secrets**: NEVER commit API keys, private tokens, passwords, or any sensitive credentials to this repository. Use external secret management or local-only files (e.g., `.localrc`) that are ignored by git.

## Workflows

### Adding New Dotfiles

1. Create a new directory for the application (e.g., `mkdir my-app`).
2. Replicate the target structure within that directory (e.g., `mkdir -p my-app/.config/my-app`).
3. Move/Create the configuration file there.
4. Run `stow my-app` from the repository root.

### Modifying Existing Dotfiles

1. Identify the package directory in the repository.
2. Edit the file directly within the repository.
3. If a new file is added to an existing package, `stow -R <package>` can be used to refresh the symlinks.

### Verifying Changes

- After making changes to shell configurations, use `source ~/.zshrc` (or the appropriate entry point) to verify the changes.
- Ensure that symlinks are correctly created and pointing to the intended files in this repository.

## Common Recipes

### Adding a Zellij Layout

1. Navigate to the layouts directory: `zellij/.config/zellij/layouts/`.
2. Create a new `.kdl` file with the desired layout configuration.
   - Example layout structure:
     ```kdl
     layout {
         pane split_direction="vertical" {
             pane cwd="/path/to/project" name="project-name" command="zsh" {
                 args "-c" "exec zsh"
             }
             pane cwd="/path/to/project" name="aux"
         }
     }
     ```
3. Antigravity (or rarely vscode) is also launched in one of the panes on startup.
4. Add an alias to `zsh/.zsh/bash_aliases` for easy access:
   ```shell
   alias my-layout='zellij --layout my-layout'
   ```
5. Ask if I want to make git commit with the changes.
