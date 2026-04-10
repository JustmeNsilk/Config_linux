local opt = vim.opt

-- Apparence
opt.number = true          -- numéros de ligne
opt.relativenumber = true
opt.scrolloff = 8          -- garde 8 lignes visibles au dessus/dessous du curseur
opt.signcolumn = "yes"

-- Indentation
opt.tabstop = 4            -- 1 tab = 4 espaces
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true     -- indentation automatique intelligente

-- Confort
opt.wrap = false           -- pas de retour à la ligne automatique
opt.clipboard = "unnamedplus"  -- partage le presse-papier avec le système
opt.mouse = "a"            -- souris activée
opt.splitright = true      -- nouvelle fenêtre à droite
opt.splitbelow = true      -- nouvelle fenêtre en bas
opt.termguicolors = true   -- couleurs 24bit
