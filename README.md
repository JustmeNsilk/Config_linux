# 🐧 Linux Configuration

This repository contains my personal **Linux configuration files**.

It is intended to centralize and version the configuration of the tools I use daily, such as:

* 🖥️ terminal emulators
* 💻 development environments (IDE / editors)
* ⚙️ development tools
* 🎨 visual themes and assets

The repository will **evolve over time** as my workflow improves and as I experiment with new tools.

---

# 📁 Repository Architecture

```text
📁 linux-config
 └── 📁 config
      └── 📁 ghostty
           ├── 📁 img
           │    └── background.png
           │
           ├── config.ghostty
           ├── my-theme
           └── my-keybind
```

---

# 📂 Directory Details

## 📁 config

Central directory containing the configuration of different tools used in my Linux environment.

As the repository grows, additional applications will appear here (terminal, editor, development tools, etc.).

Example future structure:

```text
config/
 ├── ghostty
 ├── nvim
 ├── ide
 └── tools
```

---

## 🖥️ ghostty

Configuration files for the **Ghostty terminal**.

This directory contains:

* terminal configuration
* visual assets
* theme definitions
* custom keybindings

---

### ⚙️ config.ghostty

Main configuration file used by Ghostty.

It defines the **core terminal behavior**, including:

* window behavior
* rendering options
* theme imports
* keybinding imports
* performance settings

This file acts as the **entry point of the Ghostty configuration**.

---

### 🎨 my-theme

Custom theme configuration.

Defines the visual appearance of the terminal:

* color palette
* background and foreground colors
* cursor styling
* terminal color overrides

---

### ⌨️ my-keybind

Custom keyboard bindings used by the terminal.

Contains shortcuts for:

* tab management
* pane navigation
* workflow optimizations
* window control

Separating keybindings keeps the configuration easier to maintain.

# 🔮 Future Improvements

Planned improvements include:

* additional application configurations (IDE, editors, tools)
* more modular theme management
* improved keybinding ergonomics
* better documentation of configuration choices

---

# 📜 License

GPL-3.0 Licence
Feel free to explore or use it as inspiration for your own Linux setup.
