return {
   {
      "tpope/vim-sleuth",
   },
   {
      "MaximilianLloyd/tw-values.nvim",
      keys = {
         {
            "gK",
            "<cmd>TWValues<cr>",
            desc = "Show tailwind CSS values",
         },
      },
      opts = {
         border = "rounded",
         show_unknown_classes = true,
         focus_preview = true,
      },
   },
   {
      "nacro90/numb.nvim",
      opts = {},
   },
   {
      "stevearc/oil.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
         columns = {
            "icon",
            "permissions",
            "size",
            "mtime",
         },
         keymaps = {
            ["<C-v>"] = "actions.select_vsplit",
            ["<C-s>"] = "actions.select_split",
            ["<Esc>"] = "actions.close",
         },
         view_options = {
            show_hidden = true,
         },
         float = {
            padding = 5,
         },
      },
      keys = {
         { "<Leader>o", ":lua require('oil').open_float()<CR>" },
      },
   },
   {
      "sbdchd/neoformat",
      keys = {
         { "<Leader>fm", ":Neoformat<CR>" },
      },
   },
   {
      "laytan/tailwind-sorter.nvim",
      dependencies = {
         "nvim-treesitter/nvim-treesitter",
         "nvim-lua/plenary.nvim",
      },
      build = "cd formatter && npm i && npm run build",
      config = {},
   },
   {
      "numToStr/Comment.nvim",
      opts = {},
   },
   {
      "norcalli/nvim-colorizer.lua",
      config = function()
         require("colorizer").setup()
      end,
   },
   {
      "themaxmarchuk/tailwindcss-colors.nvim",
      config = function()
         require("tailwindcss-colors").setup()
      end,
   },
   {
      "roobert/tailwindcss-colorizer-cmp.nvim",
   },
   {
      "github/copilot.vim",
      config = function()
         vim.cmd('imap <silent><script><expr> <C-CR> copilot#Accept("\\<CR>")')
         vim.g.copilot_no_tab_map = true
         vim.g.copilot_enabled = false
      end,
   },
   {
      "shortcuts/no-neck-pain.nvim",
      version = "*",
      keys = {
         { "<Leader>n", ":NoNeckPain<CR>" },
      },
   },
   {
      "nvim-tree/nvim-tree.lua",
      config = function()
         require("nvim-tree").setup()
      end,
   }
}
