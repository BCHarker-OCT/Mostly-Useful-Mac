# Backup

This is a personal list of things I would want to backup in the event of moving laptops, or things I'd want to reinstall. 

## Backups

- Dotfiles (chezmoi)
  - pass database
- Terminal Configurations
  - Regex highlights
  - Color scheme
  - Snippets
- `.ssh` dir
- `.aws` dir
- `.kube` dir
- `.gnupg` dir
- `.netrc` file
- Additional Dotfiles (I manage through chezmoi)
  - ~/.config/starship.toml file (starship configuration)
  - ~/.gitconfig file
  - ~/.hushlogin file
  - ~/.vimrc file
  - ~/.zshrc file
  - ~/.zsh_functions file
  - ~/.zsh_aliases file
- Leader Key config
- Wallpapers
- Cron Jobs
- `/bin` directory
  - ~.env file~ (this all goes through passdb, so not anymore)
- Markdown Notes
- Bookmarks
- Rocket Typist shortcuts
- Leader Key configuration
- App List
- Extension list from browser
- DataGrip projects
- Windows App Exports
- StreamDeck Plugins

## Auto-Commit chezmoi configuration changes

In `~/.config/chezmoi/config.yaml` I have the following configuration to auto-commit changes for a constant backup:

```yaml
git:
  autoCommit: true  autoCommit: true
  autoPush: true
  branch: main
sourceVCS:
  command: git
  init:
    - remote add origin https://github.com/BCHarker-OCT/MY-PRIVATERC-REPO.git
    - fetch
``` 

Then in chezmoi.toml I have this:

```toml
[git]
    autoCommit = true
    autoPush = true
```

Not sure if I need both or only one of these files to make it work, but it's working now.
