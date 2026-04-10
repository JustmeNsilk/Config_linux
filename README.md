# 🐧 Linux Configuration

> Personal Linux configuration files — centralized, versioned, and ready to deploy.

[![License: GPL-3.0](https://img.shields.io/badge/License-GPL%203.0-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Neovim](https://img.shields.io/badge/Neovim-0.11+-green.svg)](https://neovim.io)
[![Distro](https://img.shields.io/badge/Distro-Fedora%20%7C%20Arch%20%7C%20Debian-orange.svg)]()

---

## 📑 Table of Contents

- [Repository Architecture](#-repository-architecture)
- [Symlinks Setup](#-symlinks-setup)
- [Ghostty](#️-ghostty)
- [Neovim](#-neovim)
  - [How it works](#how-it-works)
  - [Dependencies](#dependencies)
  - [Plugin manager](#plugin-manager-lazynvim)
  - [Config modules](#-luaconfig)
  - [Plugins](#-luaplugins)
  - [LSP Servers](#lsp-servers)
  - [Key mappings](#key-mappings)
- [Future Improvements](#-future-improvements)

---

## 📁 Repository Architecture

```text
📁 linux-config
 └── 📁 dotfiles
      ├── 📁 ghostty
      │    ├── 📁 img
      │    │    └── background.png
      │    ├── config.ghostty
      │    ├── my-theme
      │    └── my-keybinds
      │
      └── 📁 nvim
           ├── init.lua
           └── 📁 lua
                ├── 📁 config
                │    ├── options.lua
                │    ├── keymaps.lua
                │    └── autocmds.lua
                └── 📁 plugins
                     ├── init.lua
                     ├── ui.lua
                     ├── editor.lua
                     ├── lsp.lua
                     ├── telescope.lua
                     └── git.lua
```

---

## 🔗 Symlinks Setup

All config directories are symlinked to `~/.config/` so that edits in this repo are reflected instantly.

```bash
# Clone the repo
git clone https://github.com/JustmeNsilk/linux_config ~/linux_config

# Ghostty
rm -rf ~/.config/ghostty
ln -s ~/linux_config/dotfiles/ghostty ~/.config/ghostty

# Neovim
rm -rf ~/.config/nvim
ln -s ~/linux_config/dotfiles/nvim ~/.config/nvim
```

---

## 🖥️ Ghostty

Configuration files for the **[Ghostty terminal](https://ghostty.org)**.

| File | Purpose |
|------|---------|
| `config.ghostty` | Entry point — core terminal behavior (window, rendering, imports) |
| `my-theme` | Color palette, background/foreground, cursor styling |
| `my-keybinds` | Custom shortcuts for tabs, panes, and window control |

---

## 💻 Neovim

Configuration for **[Neovim](https://neovim.io)** — a modern, extensible terminal-based editor.

### How it works

`~/.config/nvim/init.lua` is the **entry point**. It loads everything in order:

```
init.lua
 ├── vim.g.mapleader = " "            -- leader key (Space)
 ├── bootstrap lazy.nvim              -- auto-installs plugin manager
 ├── require("config.options")        -- editor settings
 ├── require("config.keymaps")        -- key mappings
 ├── require("config.autocmds")       -- auto commands
 └── require("lazy").setup("plugins") -- loads lua/plugins/*.lua
```

---

### Dependencies

Install the required system dependencies for your distro:

<details>
<summary>🔵 Fedora</summary>

```bash
sudo dnf install neovim git gcc ripgrep nodejs npm lazygit
```

</details>

<details>
<summary>🟣 Arch Linux</summary>

```bash
sudo pacman -S neovim git gcc ripgrep nodejs npm lazygit
```

</details>

<details>
<summary>🟠 Debian / Ubuntu</summary>

```bash
sudo apt install neovim git gcc ripgrep nodejs npm
# lazygit n'est pas dans les dépôts officiels, installer via GitHub releases :
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
```

</details>

---

### Nerd Font (required for icons)

<details>
<summary>📦 Install JetBrainsMono Nerd Font</summary>

```bash
mkdir -p ~/.local/share/fonts
curl -Lo /tmp/JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip /tmp/JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
fc-cache -fv
```

Puis dans la config de ton terminal :
```
font-family = JetBrainsMono Nerd Font Mono
```

</details>

---

### Plugin manager: lazy.nvim

**[lazy.nvim](https://github.com/folke/lazy.nvim)** is auto-installed on first Neovim launch — no manual setup needed.

```
:Lazy          → open plugin manager UI
:Lazy update   → update all plugins
:Lazy clean    → remove unused plugins
```

---

### 📄 lua/config/

| File | Purpose |
|------|---------|
| `options.lua` | Core editor settings (line numbers, indentation, clipboard, colors…) |
| `keymaps.lua` | All custom key mappings — leader key is `Space` |
| `autocmds.lua` | Auto commands triggered by events (save, open, filetype…) |

---

### 📦 lua/plugins/

| File | Plugins | Purpose |
|------|---------|---------|
| `ui.lua` | gruvbox, lualine, nvim-tree, bufferline | Theme, statusline, file explorer, tabs |
| `editor.lua` | nvim-autopairs | Auto-close brackets, quotes, parentheses |
| `lsp.lua` | mason, mason-lspconfig, nvim-lspconfig, nvim-cmp, LuaSnip | LSP, autocompletion, snippets |
| `telescope.lua` | telescope.nvim | Fuzzy finder — search files and text |
| `git.lua` | gitsigns, lazygit.nvim | Git signs in gutter, full Git UI |

---

### LSP Servers

Managed via **[Mason](https://github.com/williamboman/mason.nvim)** — open `:Mason` inside Neovim to install/update servers.

| Server | Language |
|--------|---------|
| `clangd` | C / C++ |
| `pyright` | Python |

---

### Key mappings

> Leader key = `Space`

| Shortcut | Action |
|----------|--------|
| `Space + w` | Save file |
| `Space + q` | Quit |
| `Space + e` | Toggle file explorer |
| `Space + ff` | Find file |
| `Space + fg` | Search text in files |
| `Space + fb` | Search open buffers |
| `Space + gg` | Open Lazygit |
| `Space + gb` | Git blame current line |
| `Space + gp` | Preview git hunk |
| `Tab` | Next buffer |
| `Shift + Tab` | Previous buffer |
| `Space + x` | Close current buffer |
| `Ctrl + h/j/k/l` | Navigate between splits |

---

## 🔮 Future Improvements

- [ ] DAP (debugger) for C++ and Python
- [ ] Shell configuration (zsh / aliases)
- [ ] Additional tool configs
- [ ] Automated install script

---

## 📜 License

GPL-3.0 — feel free to explore or use as inspiration for your own setup.
