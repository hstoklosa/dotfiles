# hstoklosa.files

This repository is a collection of the configuration files for my Windows and macOS setups. It consists of tweaks, shortcuts, and customisations I use to make my dev environment feel great, no matter which machine I'm on.

I got tired of setting everything up from scratch every time I switched machines or reinstalled an OS and by keeping my dotfiles versioned and synced, I can get a consistent setup up and running in no time.

## tools

**Cheat Sheets & Quick Reference**

- [cheat.sh](https://github.com/chubin/cheat.sh) - the only cheat sheet you need
- [tldr](https://github.com/tldr-pages/tldr) - Collaborative cheatsheets for console commands
- [navi](https://github.com/denisidoro/navi) - An interactive cheatsheet tool for the command-line

**Navigation & File Searching**

- [zoxide](https://github.com/ajeetdsouza/zoxide) - A smarter cd command. Supports all major shells
- [autojump](https://github.com/wting/autojump) - A cd command that learns - easily navigate directories from the command line
- [fzf](https://github.com/junegunn/fzf) - A command-line fuzzy finder

**Shell Enhancements**

- [zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use) - ZSH plugin that reminds you to use existing aliases for commands you just typed
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) - Fish-like autosuggestions for zsh
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - Fish shell like syntax highlighting for Zsh

**Version Control & Git Tools**

- [gh](https://github.com/cli/cli) - GitHub’s official command line tool
- [lazygit](https://github.com/jesseduffield/lazygit) - Simple terminal UI for git commands

**Container Management**

- [lazydocker](https://github.com/jesseduffield/lazydocker) - The lazier way to manage everything docker

**Other Utilities**

- [aider](https://github.com/Aider-AI/aider) - aider is AI pair programming in your terminal
- [btop](https://github.com/aristocratos/btop) - A monitor of resources
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - A feature-rich command-line audio/video downloader
- [glow](https://github.com/charmbracelet/glow) - Render markdown on the CLI, with pizzazz!

### oh-my-zsh

- [colored-man-pages](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages) - A plugin that adds colors to man pages
- [web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search) - A plugin that adds aliases for searching with Google, Wiki, Bing, YouTube and other popular services.
- [copypath](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copypath) - Copies the path of given directory or file to the system clipboard.
- [copyfile](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile) - Puts the contents of a file in your system clipboard so you can paste it anywhere.
- [macos](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos) - A plugin that provides a few utilities to make it more enjoyable on macOS (previously named OSX).

### zsh-autosuggestions

Bind `ctrl` + `space` to accept the current suggestion.

```bash
bindkey '^ ' autosuggest-accept
```

### lazydocker

I personally use this a lot so I've made an alias for it like so:

```
alias lzd='lazydocker
```

- List of [keybindings](https://github.com/jesseduffield/lazydocker/blob/master/docs/keybindings/Keybindings_en.md).

## macos-specific tools

- [Rectangle](https://github.com/rxhanson/Rectangle) - Move and resize windows on macOS with keyboard shortcuts and snap areas
- [alt-tab-macos](https://github.com/lwouis/alt-tab-macos) - Windows alt-tab on macOS
- [alfred-my-mind](https://github.com/nikitavoloboev/alfred-my-mind) - Alfred workflow to search through my notes and bookmarks

## thanks

I want to say thanks to all the people that have open-sourced their configuration (dot)files and scripts, as they've been invaluable when it comes to customising and improving my own workflow. I hope this repository can offer the same value to others looking to enhance their setup.

If you're interested in exploring or starting your own dotfiles, check out [the unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/).

## license

H. Stoklosa - hubert.stoklosa23@gmail.com

Distributed under the MIT license. See `LICENSE` for more information.

[https://github.com/hstoklosa](https://github.com/hstoklosa)
