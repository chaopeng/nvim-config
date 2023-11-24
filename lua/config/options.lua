-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- use treesitter to folding code blocks.
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- use osc 52 clipboard which is supported on kitty.
vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.clipboard.osc52").copy,
    ["*"] = require("vim.clipboard.osc52").copy,
  },
  paste = {
    ["+"] = require("vim.clipboard.osc52").paste,
    ["*"] = require("vim.clipboard.osc52").paste,
  },
}
