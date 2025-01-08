-----------------------------------------------------------
--  File Manager
-----------------------------------------------------------
---@type LazySpec
return {
	"mikavilpas/yazi.nvim",
	version = false,
	enabled = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	cmd = "Yazi",
	keys = {
		{ "<leader>e", "<cmd>Yazi toggle<cr>", desc = "Togggle Yazi" },
		{ "<leader>fe", "<cmd>Yazi<cr>", desc = "Open Yazi at the current file" },
		{ "<leader>tf", "<cmd>Yazi cwd<cr>", desc = "File Manager in cwd(Yazi)" },
	},
	---@type YaziConfig
	opts = {
		open_for_directories = false,
		use_ya_for_events_reading = true,
		use_yazi_client_id_flag = true,
		highlight_hovered_buffers_in_same_directory = false,
		integrations = {
			--- What should be done when the user wants to grep in a directory
			---@param directory string
			grep_in_directory = function(directory)
				require("fzf-lua").live_grep_native({
					prompt = "Search in " .. directory,
					cwd = directory,
				})
			end,
		},
	},
}
