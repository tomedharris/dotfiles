return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {},
  ---@diagnostic enable: missing-fields
  keys = {
    {
      "<leader>fa",
      function() require('fzf-lua').files() end,
      desc="Find all files in project directory"
    },
    {
      "<leader>ff",
      function() require('fzf-lua').git_files() end,
      desc="Find files in project directory tracked by git"
    },
    {
      "<leader>fg",
      function() require('fzf-lua').grep_project() end,
      desc="Find files in project directory with grep"
    }  
  }
}
