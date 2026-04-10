--  This files is the main file for any other config file
--  for this nvim configuration, at any question just check
--  This URL: https://github.com/JustmeNsilk/Config_linux :D


vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

--   ---------------------------
--  |       Requirements        |
--   ---------------------------

require("config.options")
require("config.keymaps")
require("config.autocmds")

