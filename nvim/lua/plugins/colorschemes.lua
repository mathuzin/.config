return {
  { "ellisonleao/gruvbox.nvim" },
  { "shrikecode/kyotonight.vim" },
  { "hachy/eva01.vim" },
  { "bluz71/vim-moonfly-colors" },
  {
    "olimorris/onedarkpro.nvim",
    name = "one",
    config = function()
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("rose-pine")
  --   end,
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      styles = {
        functions = {},
      },
      sidebars = { "qf", "vista_kind", "terminal", "packer" },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      -- vim.cmd.colorscheme("tokyonight-night")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent = true,
    },
  },
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    name = "tokyodark",
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    name = "ayu",
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "arturgoms/moonbow.nvim",
    lazy = false,
    name = "moonbow",
    priority = 1000,
    opts = {
      transparent = true,
      terminal_colors = true,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    name = "gruvbox",
    priority = 1000,
    opts = {
      transparent = true,
      terminal_colors = true,
    }
  },
    {
  "webhooked/kanso.nvim",
  lazy = false,
  priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("kanso")
    end,
    },
  { "diegoulloao/neofusion.nvim" },
  -- {
  --   "Marlon-Sbardelatti/zuca-nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("neomodern").setup({
  --       -- optional configuration here
  --     })
  --     -- require("neomodern").load()
  --   end,
  -- },
}

