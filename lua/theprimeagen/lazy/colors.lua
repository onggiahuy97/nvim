function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

--    -- Set custom color for various syntax groups
--    vim.api.nvim_set_hl(0, 'Function', { fg = '#FFD700' }) -- Function names
--    vim.api.nvim_set_hl(0, 'Identifier', { fg = '#00FF00' }) -- Variable names
--    vim.api.nvim_set_hl(0, 'Keyword', { fg = '#FF00FF' }) -- Keywords like 'end'
--    vim.api.nvim_set_hl(0, 'Comment', { fg = '#808080', italic = true }) -- Comments
--    vim.api.nvim_set_hl(0, 'String', { fg = '#FFA500' }) -- String literals
--    vim.api.nvim_set_hl(0, 'Number', { fg = '#00CED1' }) -- Number literals
--    vim.api.nvim_set_hl(0, 'Boolean', { fg = '#DC143C' }) -- Boolean literals
--    vim.api.nvim_set_hl(0, 'Conditional', { fg = '#9370DB' }) -- Conditional statements
--    vim.api.nvim_set_hl(0, 'Operator', { fg = '#00BFFF' }) -- Operators
--    vim.api.nvim_set_hl(0, 'Type', { fg = '#7B68EE' }) -- Type names
end

return {

    {
        "erikbackman/brightburn.vim",
    },
    {
        "nyoom-engineering/oxocarbon.nvim"
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        config = function()
            ColorMyPencils()
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "", -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end
    },
     {
        "Mofiqul/vscode.nvim",
        config = function()
            require('vscode').setup({
                -- Customize theme settings here
                transparent = false,
                italic_comments = true,
            })
            -- Optional: if you want to set vscode theme as the default
            -- vim.cmd.colorscheme('vscode')
        end
    },
}
