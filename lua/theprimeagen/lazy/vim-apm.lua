return {
    {
        "ThePrimeagen/vim-apm", -- Replace "username" with the actual GitHub username of the vim-apm repository
        config = function()
            local apm = require("vim-apm")
            apm:setup({})
            vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
        end
    }
}

