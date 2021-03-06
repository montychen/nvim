--  S代表Shift键盘；s代表Command键，M或A代表option键盘, C代表Control键盘

local override = require "custom.override"
local M = {}

M.mappings = require "custom.mymappings"

M.ui = {
	theme = "onedark",
}

M.options = {
        user = function ()
            require "custom.myoptions"
        end,
}


M.plugins = {
    -- add yourself plugins
    user = require "custom.myplugins.myinit", -- 自己添加的插件/lua/custom/myplugins/myinit.lua

   options = {
      statusline = {
         shortline = true,
         style = "default", -- default, round , slant , block , arrow
       },
       lspconfig = {
         setup_lspconf = "custom.lspconfig",
      },
   },

 override = {
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["NvChad/nvterm"] = override.nvterm,
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
      ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
   },
}


return M
