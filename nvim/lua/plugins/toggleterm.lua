return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        open_mapping = [[<c-\>]],
        direction = 'float',
    },
    keys = {
        { "<leader>gg", function() _LAZYGIT_TOGGLE() end, desc = "Toggle Lazygit" },
        { "<leader>b", function() _BTOP_TOGGLE() end, desc = "Toggle Btop" },
        { "<leader>cc", function() _CLAUDE_TOGGLE() end, desc = "Toggle ClaudeCode" },
    },
    config = function(_, opts)
        require("toggleterm").setup(opts)

        local Terminal = require("toggleterm.terminal").Terminal

        local lazygit = Terminal:new({
            cmd = "lazygit",
            direction = "float",
            hidden = true,
        })
        function _LAZYGIT_TOGGLE()
            lazygit:toggle()
        end

        local btop = Terminal:new({
            cmd = "btop",
            direction = "float",
            hidden = true,
        })
        function _BTOP_TOGGLE()
            btop:toggle()
        end

        local claude = Terminal:new({
            cmd = "claude",
            direction = "vertical",
            hidden = true,
        })
        function _CLAUDE_TOGGLE()
            claude:toggle(math.floor(vim.o.columns * 0.5), "vertical")
        end
    end
}
