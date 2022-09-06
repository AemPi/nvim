-- [[ init.lua ]]

--[[
example Folder structure
#########################
	~/.config/nvim
	├── init.lua
	├── lua
	│   └── statusline.lua
	└── plugin
--]]

-- [[ IMPORTS ]]
require('statusline')
require('packer')
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
end)

-- [[ COLORSCHEMA ]]
require('onedark').setup {
    style = 'dark'                    -- THEMES = dark, darker, cool, deep, warm, warmer
}
require('onedark').load()

-- [[ LOCAL VARIABLES ]]
local global            = vim.g         -- For the opts options
local opt               = vim.opt       -- Set options (opt/opt/windows-scoped)
local cmd               = vim.cmd       -- vim command

-- [[ GENERAL ]]
opt.mouse           = 'a'               -- Enable mouse support
opt.clipboard       = 'unnamedplus'     -- Copy/paste to system clipboard
opt.swapfile        = false             -- Don't use swapfile
opt.completeopt     = 'menuone,noinsert,noselect'  -- Autocomplete options
opt.wildmode = {'list','longest'}       -- Command-line completion mode
opt.completeopt = {'menuone', 'noinsert', 'noselect'}  -- Completion options (for deoplete)

-- [[ UI Options ]]
opt.syntax          = "ON"              -- str:  Allow syntax highlighting
opt.number          = true              -- bool: Show line numbers
opt.showmatch       = true              -- Highlight matching parenthesis
opt.termguicolors   = true              -- Enable 24-bit RGB colors
opt.background      = "dark"            -- Set Background
opt.ignorecase      = true              -- bool: Ignore case in search patterns
opt.smartcase       = true              -- bool: Override ignorecase if search contains capitals
opt.incsearch       = true              -- bool: Use incremental search
opt.hlsearch        = true              -- bool: Highlight search matches
opt.list            = true              -- Show some invisible characters

-- [[ Tab Options ]]
opt.autoindent      = true
opt.expandtab       = true              -- Use spaces instead of tabs
opt.softtabstop     = 4
opt.shiftwidth      = 4                 -- Shift 4 spaces when tab
opt.tabstop         = 4                 -- 1 tab == 4 spaces
opt.cursorline      = true              -- Enable/Disable Cursorline for currentline
opt.laststatus      = 2

