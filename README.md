# Neovim Configuration (Minimal IDE Setup)

This repository contains my personal **Neovim configuration**, designed to be:

- 🚫 **Plugin-free**
- 🧼 **Minimal and clean**
- 🧠 **Intuitive** and keyboard-driven
- 💻 **Multi-language IDE** with built-in LSP support
- 🧰 **Dotfiles-ready** and easy to port

---

## 🔧 Structure

```
~/.config/nvim/
├── init.lua
└── lua/
    ├── core/
    │   ├── keymaps.lua
    │   └── options.lua
    │
    ├── lsp/
    │   ├── init.lua
    │   └── servers/
    │       ├── lua_ls.lua
    │       ├── haskell.lua
    │       ├── gopls.lua
    │       └── jdtls.lua
    │
    ├── ui/
    │   ├── startscreen.lua
    │   └── statusline.lua
```

---

## 💡 Features

### 🚀 Core Behavior
- Sensible defaults (relative numbers, tab size, clipboard, splits)
- Leader key: `<Space>`
- Keymaps for split/tab navigation, terminal, explorer, git
- Native terminal and LazyGit integration

### 🧠 LSP Support (No Plugins)
- Diagnostics with custom icons
- Buffer-local keymaps for:
  - `gd`, `gi`, `gr`, `K`, `<leader>rn`, `<leader>ca`, `<leader>f`
- Format-on-save (`BufWritePre`)
- Configured for:
  - **Lua** (`lua_ls`)
  - **Haskell** (`hls`)
  - **Go** (`gopls`)
  - **Java** (`jdtls`, with project support)

### 🗂️ File Explorer (Netrw)
- Toggle with `<leader>e`
- Uses `:Lex` and closes when already open
- Supports creation, deletion, renaming, movement

### 🖥️ UI
- Custom ASCII start screen
- Minimal statusline showing filename, filetype, and position

---

## 🛠️ Setup

1. Clone into your dotfiles repo
2. Symlink into `~/.config/nvim`
3. Install LSP servers manually (`lua-language-server`, `haskell-language-server`, `gopls`, `jdtls`)

---

## 🧹 Notes

- All LSP functionality is native
- File explorer and dashboard are hand-written (no plugins)
- Project-specific LSP workspaces (especially for Java)
- Designed to be portable and fast
