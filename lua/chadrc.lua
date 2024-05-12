-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua
local header = require("utils.banner").getBanner()
-- prevent scroll on alpha

local autocmd = vim.api.nvim_create_autocmd
vim.api.nvim_create_augroup("dashboard", { clear = true })

vim.api.nvim_create_autocmd({ "FileType" },
	{
		group = "dashboard",
		desc = "Disable status, tablines, and cmdheight for alpha",
		callback = function(event)
			local isDashboard = vim.bo[event.buf].filetype == "nvdash"
			if isDashboard then
				vim.opt.showtabline, vim.opt.laststatus, vim.opt.cmdheight = 0, 0, 0
			elseif not isDashboard then
				vim.opt.showtabline, vim.opt.laststatus, vim.opt.cmdheight = 2, 2, 0
			end
		end,
	}
)

vim.lsp.handlers['textDocument/hover'] = function(_, method, result)
	vim.lsp.util.focusable_float(method, function()
		if not (result and result.contents) then
			return { 'No information available' }
			-- return
		end
		local markdown_lines = vim.lsp.util.convert_input_to_markdown_lines(result.contents)
		markdown_lines = vim.lsp.util.trim_empty_lines(markdown_lines)
		if vim.tbl_isempty(markdown_lines) then
			return { 'No information available' }
			-- return
		end
		local bufnr, winnr = vim.lsp.util.fancy_floating_markdown(markdown_lines, {
			pad_left = 1, pad_right = 1,
		})
		vim.lsp.util.close_preview_autocmd({ "CursorMoved", "BufHidden" }, winnr)
		return bufnr, winnr
	end)
end

vim.api.nvim_create_autocmd({ "VimEnter" },
	{
		pattern = "*",
		callback = function(event)
			local path = vim.api.nvim_command_output(":echo argv(0)")
			if (path == nil or path == "") then -- if no arguments open with dashboard
				vim.cmd("Nvdash")
			elseif (vim.fn.isdirectory(path) ~= 0) then -- if oppened with a directory open foie browser
				vim.cmd("cd " .. path)
				vim.cmd("Telescope find_files")
			end
		end,
	}
)

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "tokyonight",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
		Keyword = { italic = true },
		NvDashAscii = {
			bg = "none",
			fg = "blue"
		},
		NvDashButtons = {
			bg = "terminal_black",
			fg = "green"
		}
	},
	nvdash = {
		load_on_startup = true,

		header = header,

		buttons = {
			{ "  Find File", "<leader>ff", "Telescope find_files" },
			{ "󰈚  Recent Files", "<leader>fo", "Telescope oldfiles" },
			{ "󰈭  Find Word", "<leader>fw", "Telescope live_grep" },
			{ "  Find Projects", "<leader>fp", "Telescope projects" },
			{ "  Themes", "<leader>eT", "Telescope themes" },
			{ "  Mappings", "<leader>ch", "NvCheatsheet" },
		},
	},
	tabufline = {
		enabled = true,
		lazyload = true,
		order = { "treeOffset", "buffers", "tabs", "btns" },
		modules = nil,
	},
	statusline = {
		theme = "default", -- default/vscode/vscode_colored/minimal
		-- default/round/block/arrow separators work only for default statusline theme
		-- round and block will work for minimal theme only
		separator_style = "arrow",
		-- order = nil,
		-- modules = nil,
	},
}

return M
