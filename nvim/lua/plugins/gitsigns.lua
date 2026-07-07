return {
    "lewis6991/gitsigns.nvim",
    enabled = true,
    config = function()
        local gs = require("gitsigns")
        gs.setup()

        vim.keymap.set("n", "<leader>gn", gs.next_hunk, { desc = "Next hunk" })
        vim.keymap.set("n", "<leader>gp", gs.prev_hunk, { desc = "Prev hunk" })
        vim.keymap.set("n", "<leader>gh", gs.preview_hunk, { desc = "Preview hunk" })
        vim.keymap.set("n", "<leader>gr", gs.reset_hunk, { desc = "Reset hunk" })
        vim.keymap.set("n", "<leader>gR", gs.reset_buffer, { desc = "Reset buffer" })
        vim.keymap.set("n", "<leader>gs", gs.stage_hunk, { desc = "Stage hunk" })
        vim.keymap.set("n", "<leader>gu", gs.undo_stage_hunk, { desc = "Undo stage hunk" })
        vim.keymap.set("n", "<leader>gb", gs.blame_line, { desc = "Blame line" })
    end
}
