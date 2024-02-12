local wk = require("which-key");
-- harpoon

local mark = require("harpoon.mark");
local ui = require("harpoon.ui");

-- Harpoon
wk.register({
	["<leader>"] = {
		h = {
			name = "harpoon",
			a = { mark.add_file, "Add file to harpoon" },
			l = { ui.toggle_quick_menu, "Toggle quick menu" },
			r = { mark.rm_file, "Remove file from harpoon" },
			["/"] = { ui.nav_next, "Next mark"},
			["."] = { ui.nav_prev, "Previous mark"},
		},
	},
})
-- Markdown preview
wk.register({
	["<leader>"] = {
		m = {
			name = "Markdown Preview",
			s = { "<CMD>:MarkdownPreview<cr>", "Open preview" },
			x = { "<CMD>:MarkdownPreviewStop<cr>", "Stop preview" },
		},
	},
})
-- NeoTree 
wk.register({
	["<leader>"] = {
		t = {
			name = "NeoTree file picker",
			t = { "<CMD>:Neotree<cr>", "Toggle file window" },
		}
	},
})


-- Pastify
wk.register({
	["<leader>"] = {
		p = {
			name = "Paste image",
			t = {"<CMD>:Pastify<cr>" , "Toggle file window" },
		}
	},
})

return {}
