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
      "<leader>sr",
      function() require('fzf-lua').resume() end,
      desc="Resume FzfLua"
    },
    {
      "<leader>ss",
      function() require('fzf-lua').global() end,
      desc="Find all files in project directory"
    },
    {
      "<leader>sg",
      function() require('fzf-lua').grep() end,
      desc="Grep"
    },
    {
      "<leader>sg",
      function() require('fzf-lua').grep_visual() end,
      mode = "v",
      desc="Grep visual selection"
    },
    {
      "<leader>slg",
      function() require('fzf-lua').live_grep() end,
      desc="Live Grep"
    },
  }
}
