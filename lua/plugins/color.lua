return {
	"rktjmp/lush.nvim",
	config = function()
		local lush = require("lush")
		local hsl = lush.hsl
		---@diagnostic disable: undefined-global
		local theme = lush(function(injected_functions)
			local sym = injected_functions.sym
			return {
				Normal({ bg = "#0a0a0a", fg = "#00ff80" }), -- Normal text
				ColorColumn({ bg = "#0a0a0a" }), -- Columns set with 'colorcolumn'

				Pmenu({ bg = "#0a0a0a", fg = "#00ff80" }), -- Popup menu: Normal item.

				Directory({ fg = "#00ff80" }), -- Directory names (and other special names in listings)

				LineNr({ fg = "#00ff80" }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
				LineNrAbove({ fg = "#00ff80" }), -- Line number for when the 'relativenumber' option is set, above the cursor line
				LineNrBelow({ fg = "#00ff80" }), -- Line number for when the 'relativenumber' option is set, below the cursor line
				Conceal({ fg = "#00ff80" }), -- Placeholder characters substituted for concealed text (see 'conceallevel')
				Title({ fg = "#00ff80" }), -- Titles for output from ":set all", ":autocmd" etc.
				CursorLine({ bg = "#111111" }), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.

				ModeMsg({ fg = "#00ff80" }), -- 'showmode' message (e.g., "-- INSERT -- ")
				MsgArea({ fg = "#00ff80" }), -- Area for messages and cmdline
				WarningMsg({ fg = "#00ff80" }), -- Warning messages
				Question({ bg = "#00ff80" }), -- |hit-enter| prompt and yes/no questions

				StatusLine({ fg = "#00ff80" }), -- Status line of current window
				StatusLineNC({ fg = "#00ff80" }), -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

				Visual({ bg = "#1d754f" }), -- Visual mode selection
				IncSearch({ bg = "#1d754f", fg = "#00ff80" }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"

				Function({ fg = "#00ff80" }), --   Function name (also: methods for classes)
				Statement({ fg = "#00ff80", gui = "bold" }), -- (*) Any statement
				Type({ fg = "#00ff80" }), -- (*) int, long, char, etc.
				sym("@variable")({ fg = "#4dffa5" }), -- Identifier
				String({ fg = "#4dffa5" }), --   A string constant: "this is a string"
				Comment({ fg = "#00b300" }), -- Any comment
				PreProc({ fg = "#00ff80" }), -- (*) Generic Preprocessor
				Constant({ fg = "#4dffa5" }), -- (*) Any constant
				Special({ fg = "#00ff80" }), -- (*) Any special symbol
				Identifier({ fg = "#00ff80" }), -- (*) Any variable name
				Operator({ fg = "#00ff80" }), --   "sizeof", "+", "*", etc.
				Delimiter({ fg = "#00ff80" }), --   Character that needs attention
				DiagnosticError({ fg = "#00ff80" }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
				DiagnosticHint({ fg = "#00ff80" }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
				DiagnosticVirtualTextWarn({ fg = "#00ff80" }), -- Used for "Warn" diagnostic virtual text.
				DiagnosticVirtualTextHint({ fg = "#00ff80" }), -- Used for "Hint" diagnostic virtual text.
				DiagnosticInfo({ fg = "#4dffa5" }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
			}
		end)
		lush(theme)
	end,
}
