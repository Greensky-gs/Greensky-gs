require('config.options')
require('config.keybinds')
require('config.lazy')

vim.lsp.enable("clangd")
vim.lsp.enable("pyright")

-- Installation : npm i -g pyright pour le serveur LSP pyright
--              : install clangd (normalement avec clang/gcc)
