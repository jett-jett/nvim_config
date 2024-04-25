return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim"} },

    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        vim.keymap.set("n", "<leader>rr", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>rm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>r1", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>r2", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>r3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>r4", function() harpoon:list():select(4) end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>rp", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>rn", function() harpoon:list():next() end)
    end
}
