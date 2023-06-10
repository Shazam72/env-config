lua << EOF
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"javascript",
		"typescript",
		"vim",
		"json",
		"html",
		"rust",
		"tsx",
		"c",
		"cpp",
		"css",
		"scss",
		"jsdoc",
		"json5",
		"lua",
		"make",
		"markdown",
		"php",
		"python",
		"solidity",
		"sql",
		"vim",
		"vimdoc",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
EOF
