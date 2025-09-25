return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
    lazy = true,
    keys = {
        {
            "<leader>a",
        function()
            require("harpoon"):list():add()
        end,
        desc = "Add to Harpoon"
    },
        {
            "<leader>m",
        function()
			require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
        end,
        desc = "Show Harpoon"
    },
        {
            "<leader>1",
        function()
            require("harpoon"):list():select(1)
        end,
        desc = "Harpoon 1"
    },
        {
            "<leader>2",
        function()
            require("harpoon"):list():select(2)
        end,
        desc = "Harpoon 2"
    },
        {
            "<leader>3",
        function()
            require("harpoon"):list():select(3)
        end,
        desc = "Harpoon 3"
    },
        {
            "<leader>4",
        function()
            require("harpoon"):list():select(4)
        end,
        desc = "Harpoon 4"
    },
    },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end, { desc = "Prev Harpoon buf" })

		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end, { desc = "Next Harpoon buf" })
	end,
}
