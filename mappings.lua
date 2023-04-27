-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

local utils = require "astronvim.utils"
local is_available = utils.is_available

local maps = {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>enew<cr>", desc = "New Buffer" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },
    ["<leader>a"] = { "gg<S-v>G", desc = "Select All" },
    ["<leader>le"] = { "<cmd>EslintFixAll<cr>", desc = "Fix All Eslint Errors" },
    -- list todos:
    ["<leader>ft"] = { "<cmd>TodoTelescope<cr>", desc = "Find Todos" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

-- NeoTree
if is_available "nvim-tree.lua" then maps.n["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", desc = "Toggle Explorer" } end

return maps
